<x-client.layout.home>
    @include('client.layouts.slider')
    @include('client.layouts.category_banner')

    <!-- Featured products -->
    <section id="featured" class="container mt-5 pb-5 mb-2 mb-sm-3 mb-lg-4 mb-xl-5">
        <h2 class="text-center pb-2 pb-sm-3">Sản phẩm</h2>

        <!-- Nav pills -->
        <div class="row g-0 overflow-x-auto pb-2 pb-sm-3 mb-3">
            <div class="col-auto pb-1 pb-sm-0 mx-auto">
                <ul class="nav nav-pills flex-nowrap text-nowrap">
                    <li class="nav-item">
                        <a class="nav-link {{ $category == null ? 'active' : '' }}" href="{{ route('client.home.index') }}#featured">
                            Tất cả
                        </a>
                    </li>
                    @foreach ($categories as $item)
                        <li class="nav-item">
                            <a class="nav-link {{ $category == $item['id'] ? 'active' : '' }}" href="{{ route('client.home.index', ['category' => $item['id']]) }}#featured">
                                {{ $item['name'] }}
                            </a>
                        </li>
                    @endforeach
                </ul>
            </div>
        </div>

        <!-- Products grid -->
        <div class="product-grid row row-cols-2 row-cols-md-3 row-cols-lg-4 gy-4 gy-md-5 pb-xxl-3">
            @foreach ($products as $item)
                <x-client.product :product="$item" />
            @endforeach
        </div>
        @if ($canViewMore)
            <div class="text-center">
                <a class="view-more-product text-dark" href="{{ route('client.home.index') }}">Xem thêm</a>
            </div>
        @endif
    </section>

    {{-- @include('client.layouts.special_collection') --}}
    @include('client.layouts.brands')
    {{-- @include('client.layouts.happy_customer') --}}
    {{-- @include('client.layouts.instagram_feed') --}}

    @push('js')
        <script>
            $(() => {
                let page = 1;
                $('.view-more-product').click(function(e) {
                    e.preventDefault();
                    const url = $(this).attr('href') + `?page=${++page}`;
                    const grid = $('.product-grid');
                    appendView(url, grid);
                });
            });
        </script>
    @endpush
</x-client.layout.home>
