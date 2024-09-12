<x-client.layout.home>
    <nav class="container pt-2 pt-xxl-3 my-3 my-md-4" aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{ route('client.home.index') }}">Trang chủ</a></li>
            <li class="breadcrumb-item active" aria-current="page">Cửa hàng</li>
        </ol>
    </nav>

    <section class="container">
        <h1 class="h3 mb-4">Cửa hàng</h1>
        <div class="row">
            <!-- Filter sidebar that turns into offcanvas on screens < 992px wide (lg breakpoint) -->
            <aside class="col-lg-3">
                <div class="offcanvas-lg offcanvas-start pe-lg-4" id="filterSidebar">
                    <div class="offcanvas-header py-3">
                        <h5 class="offcanvas-title">Bộ lọc sản phẩm</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="offcanvas"
                            data-bs-target="#filterSidebar" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body flex-column pt-2 py-lg-0">

                        <!-- Selected filters + Sorting -->
                        <div class="pb-4 mb-2 mb-xl-3">
                            <div class="d-flex align-items-center justify-content-between mb-3">
                                <h4 class="h6 mb-0">Lọc</h4>
                                <button onclick="window.location.reload()" type="button"
                                    class="btn btn-sm btn-secondary bg-transparent border-0 text-decoration-underline p-0 ms-2">
                                    Làm mới
                                </button>
                            </div>
                            <div class="d-flex flex-wrap gap-2">
                                <button type="button" class="btn btn-sm btn-secondary">
                                    <i class="ci-close fs-sm ms-n1 me-1"></i>
                                    Sale
                                </button>
                                <button type="button" class="btn btn-sm btn-secondary">
                                    <i class="ci-close fs-sm ms-n1 me-1"></i>
                                    Adidas
                                </button>
                                <button type="button" class="btn btn-sm btn-secondary">
                                    <i class="ci-close fs-sm ms-n1 me-1"></i>
                                    Bilabong
                                </button>
                                <button type="button" class="btn btn-sm btn-secondary">
                                    <i class="ci-close fs-sm ms-n1 me-1"></i>
                                    Size: XXS
                                </button>
                                <button type="button" class="btn btn-sm btn-secondary">
                                    <i class="ci-close fs-sm ms-n1 me-1"></i>
                                    $40 - $150
                                </button>
                            </div>
                        </div>

                        <div class="accordion">

                            <!-- Categories -->
                            <div class="accordion-item border-0 pb-1 pb-xl-2">
                                <h4 class="accordion-header" id="headingCategories">
                                    <button type="button" class="accordion-button p-0 pb-3" data-bs-toggle="collapse"
                                        data-bs-target="#categories" aria-expanded="true" aria-controls="categories">
                                        Thể loại
                                    </button>
                                </h4>
                                <div class="accordion-collapse collapse show" id="categories"
                                    aria-labelledby="headingCategories">
                                    <div class="accordion-body p-0 pb-4 mb-1 mb-xl-2">
                                        <div style="height: 220px" data-simplebar="" data-simplebar-auto-hide="false">
                                            <ul class="nav flex-column gap-2 pe-3">
                                                @foreach ($kinds as $item)
                                                    <li class="nav-item mb-1">
                                                        <a data-id="{{ $item->id }}"
                                                            class="nav-link d-block fw-normal p-0 set-filter-kind"
                                                            href="javascript:void(0)">
                                                            {{ $item->name }}
                                                            <span class="fs-xs text-body-secondary ms-1">
                                                                ({{ $item->products->count() }})
                                                            </span>
                                                        </a>
                                                    </li>
                                                @endforeach
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Price -->
                            <div class="accordion-item border-0 pb-1 pb-xl-2">
                                <h4 class="accordion-header" id="headingPrice">
                                    <button type="button" class="accordion-button p-0 pb-3" data-bs-toggle="collapse"
                                        data-bs-target="#price" aria-expanded="true" aria-controls="price">
                                        Giá tiền
                                    </button>
                                </h4>
                                <div class="accordion-collapse collapse show" id="price"
                                    aria-labelledby="headingPrice">
                                    <div class="accordion-body p-0 pb-4 mb-1 mb-xl-2">
                                        <div class="range-slider"
                                            data-range-slider="{&quot;startMin&quot;: 0, &quot;startMax&quot;: 500000, &quot;min&quot;: 0, &quot;max&quot;: 2000000, &quot;step&quot;: 1000, &quot;tooltipPrefix&quot;: &quot;đ&quot;}"
                                            aria-labelledby="headingPrice">
                                            <div class="range-slider-ui"></div>
                                            <div class="d-flex align-items-center">
                                                <div class="position-relative w-50">
                                                    <input name="min_price" type="number" class="form-control"
                                                        min="0" data-range-slider-min="">
                                                </div>
                                                <i class="ci-minus text-body-emphasis mx-2"></i>
                                                <div class="position-relative w-50">
                                                    <input type="number" class="form-control" min="0"
                                                        data-range-slider-max="">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Size -->
                            <div class="accordion-item border-0 pb-1 pb-xl-2">
                                <h4 class="accordion-header" id="headingSize">
                                    <button type="button" class="accordion-button p-0 pb-3" data-bs-toggle="collapse"
                                        data-bs-target="#size" aria-expanded="true" aria-controls="size">
                                        Size
                                    </button>
                                </h4>
                                <div class="accordion-collapse collapse show" id="size"
                                    aria-labelledby="headingSize">
                                    <div class="accordion-body p-0 pb-4 mb-1 mb-xl-2">
                                        <div class="d-flex flex-wrap gap-2">
                                            @foreach ($sizes as $item)
                                                <input value="{{ $item->id }}" name="size" checked
                                                    type="checkbox" class="btn-check" id="size-{{ $item->id }}">
                                                <label for="size-{{ $item->id }}"
                                                    class="btn btn-sm btn-outline-secondary">{{ $item->name }}</label>
                                            @endforeach
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Color -->
                            <div class="accordion-item border-0 pb-1 pb-xl-2">
                                <h4 class="accordion-header" id="headingColor">
                                    <button type="button" class="accordion-button p-0 pb-3"
                                        data-bs-toggle="collapse" data-bs-target="#color" aria-expanded="true"
                                        aria-controls="color">
                                        Màu sắc
                                    </button>
                                </h4>
                                <div class="accordion-collapse collapse show" id="color"
                                    aria-labelledby="headingColor">
                                    <div class="accordion-body p-0 pb-4 mb-1 mb-xl-2">
                                        <div class="d-flex flex-column gap-2">
                                            @foreach ($colors as $item)
                                                <div class="d-flex align-items-center mb-1">
                                                    <input value="{{ $item->id }}" name="color" checked
                                                        type="checkbox" class="btn-check"
                                                        id="cbcolor_{{ $item->id }}">
                                                    <label for="cbcolor_{{ $item->id }}"
                                                        class="btn btn-color fs-xl"
                                                        style="color: {{ $item->name }}"></label>
                                                    <label for="cbcolor_{{ $item->id }}"
                                                        class="fs-sm ms-2">{{ $item->label }}</label>
                                                </div>
                                            @endforeach
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Status -->
                            <div class="accordion-item border-0">
                                <h4 class="accordion-header" id="headingStatus">
                                    <button type="button" class="accordion-button p-0 pb-3"
                                        data-bs-toggle="collapse" data-bs-target="#status" aria-expanded="true"
                                        aria-controls="status">
                                        Trạng thái
                                    </button>
                                </h4>
                                <div class="accordion-collapse collapse show" id="status"
                                    aria-labelledby="headingStatus">
                                    <div class="accordion-body p-0 pb-2 pb-lg-0">
                                        <div class="d-flex flex-column gap-2">
                                            <div class="form-check mb-0">
                                                <input type="checkbox" class="form-check-input" id="sale"
                                                    checked="">
                                                <label for="sale" class="form-check-label text-body-emphasis">
                                                    Đang giảm giá
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </aside>


            <!-- Product grid -->
            <div class="col-lg-9">

                <!-- Sorting -->
                <div class="d-sm-flex align-items-center justify-content-between mt-n2 mb-3 mb-sm-4">
                    <div class="fs-sm text-body-emphasis text-nowrap">Tìm thấy <span
                            class="fw-semibold">{{ $products->total() }}</span> sản phẩm
                    </div>
                    <div class="d-flex align-items-center text-nowrap">
                        <label class="form-label fw-semibold mb-0 me-2">Sắp xếp bởi:</label>
                        <div style="width: 190px">
                            <select class="form-select border-0 rounded-0 px-1">
                                <option value="Relevance">Tên: A-Z</option>
                                <option value="Popularity">Tên: Z-A</option>
                                <option value="Price: Low to High">Giá: Thấp đến cao</option>
                                <option value="Price: High to Low">Giá: Cao đến thấp</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div class="row gy-4 gy-md-5 pb-4 pb-md-5">
                    @foreach ($products as $item)
                        <x-client.product class="col-6 col-md-4 mb-2 mb-sm-3 mb-md-0" :product="$item" />
                    @endforeach
                </div>

                {{ $products->links() }}
            </div>
        </div>
    </section>

    <button type="button"
        class="fixed-bottom z-sticky w-100 btn btn-lg btn-dark border-0 border-top border-light border-opacity-10 rounded-0 pb-4 d-lg-none"
        data-bs-toggle="offcanvas" data-bs-target="#filterSidebar" aria-controls="filterSidebar"
        data-bs-theme="light">
        <i class="ci-filter fs-base me-2"></i>
        Bộ lọc
    </button>
    @push('plugin-js')
        <script src="{{ asset('plugins/nouislider/nouislider.min.js') }}"></script>
    @endpush
    @push('js')
        <script>
            $(() => {
                const endPoint = `{{ route('client.home.shop') }}`;
                const filterEL = $('#filterSidebar');
                const delay = 300;
                const filters = {
                    minPrice: 0,
                    maxPrice: 0,
                    kind: [],
                    size: [],
                    color: [],
                    status: [],
                };
                let clear = null;

                function getUrlWithFilters() {
                    return `${endPoint}?`;
                }

                function generateFilterArray(array, key) {
                    return array.map(item => `&${key}[]=${item}`).join('');
                }

                function setSizeFilters() {
                    const items = Array.from(filterEL.find('input[name="size"]:checked'));

                    filters.size = items.map((item) => parseInt(item.value));
                }

                function setColorFilters() {
                    const items = Array.from(filterEL.find('input[name="color"]:checked'));

                    filters.color = items.map((item) => parseInt(item.value));
                }

                function setKindFilters() {
                    const items = Array.from(filterEL.find('.set-filter-kind'));

                    filters.kind = items.map((item) => parseInt(item.dataset.id));
                }

                function initFilters() {
                    setSizeFilters();
                    setColorFilters();
                    setKindFilters();
                }

                filterEL.find('input[name="size"]').on('change', function(e) {
                    setSizeFilters();
                });

                filterEL.find('input[name="color"]').on('change', function(e) {
                    setColorFilters();
                });

                filterEL.find('input[name="min_price"]').on('input', function(e) {
                    console.log(123);
                });

                filterEL.find('.set-filter-kind').on('click', function(e) {
                    const id = parseInt($(this)[0].dataset.id);

                    if (filters.kind.includes(id)) {
                        filters.kind = filters.kind.filter(item => item !== id);
                    } else {
                        filters.kind.push(id);
                    }
                    console.log(filters);
                });

                initFilters();
                console.log(filters);


            });
        </script>
    @endpush
    @push('plugin-css')
        <link rel="stylesheet" href="{{ asset('plugins/nouislider/nouislider.min.css') }}">
    @endpush
</x-client.layout.home>
