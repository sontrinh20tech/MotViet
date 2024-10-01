<?php

namespace App\Http\Controllers\Admin;

use App\Actions\Admin\User\GetListEmployeeAction;
use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\User\UpdatePasswordRequest;
use App\Http\Requests\Admin\User\UpdateUserRequest;
use App\Jobs\SendMailForgotPasswordJon;
use App\Models\Role;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function index()
    {
        $users = app()->make(GetListEmployeeAction::class)->handle();

        if (request()->ajax()) {
            return response()->view('admin.users.table_list_user', compact('users'));
        }

        $roles = Role::query()->orderBy('level')->pluck('name', 'id');

        $filters = [
            [
                'name' => 'role',
                'label' => 'Vai trò',
                'data' => $roles->toArray(),
            ],
            [
                'name' => 'is_active',
                'label' => 'Trạng thái',
                'data' => [
                    User::INACTIVE => 'Không hoạt động',
                    User::ACTIVE => 'Đang hoạt động',
                ],
            ]
        ];

        return view('admin.users.index', compact('users', 'filters'));
    }

    public function create() {}

    public function update(UpdateUserRequest $request, User $user)
    {
        $user->update($request->validated());

        return back()->with('success', 'Cập nhật thông tin thành công');
    }

    public function updatePassword(UpdatePasswordRequest $request, User $user)
    {
        $user->update([
            'password' => Hash::make($request->password),
        ]);

        return back()->with('success', 'Cập nhật mật khẩu thành công');
    }

    public function resetPassword(Request $request)
    {
        SendMailForgotPasswordJon::dispatch($request->email);

        return back()->with('success', 'Gửi mail reset mật khẩu thành công');
    }

    public function destroy(User $user)
    {
        $user->delete();

        return back()->with('success', 'Xóa tài khoản thành công');
    }

    public function updateActive(Request $request, User $user)
    {
        $user->update([
            'is_active' => $request->status,
        ]);

        return response()->json([
            'message' => 'Cập nhật trạng thái thành công.'
        ]);
    }
}
