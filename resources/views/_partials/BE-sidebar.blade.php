
<div class="sidebar h-100 smalls scroll-y" style="background-image: url(/assets/be/img/sidebar-4.png); background-repeat: no-repeat; background-size: 100%; background-position: center bottom;">
    <a class="navbar-brand d-flex" href="#">
        <div class="w-auto v-m mr-3">
            <h1 class="m-0 font-weight-bold template-primary">OT<span class="font-weight-bold template-primary-light small">W</span></h1>
        </div>
        <div class="d-flex flex-column logo-text">
            <h4 class="m-0"><span class="font-weight-bold">Admin</span>
            </h4>
            <p class="m-0"><small class="text-mute text-uppercase d-block font-weight-bold">panel</small></p>
        </div>
    </a>

    <ul class="nav flex-column">
        <li class="nav-item">
            <a class="nav-link {{ (Request::segment(1) === 'admin')? 'active' : '' }}" href="/admin"><i class="material-icons icon">dashboard</i><span class="menu-text">Dashboard</span></a>
        </li>
        <li class="nav-item">
            <a class="nav-link {{ (Request::segment(1) === 'rider-list')? 'active' : '' }}" href="/rider-list"><i class="material-icons icon">directions_bike</i><span class="menu-text">Riders</span></a>
        </li>
        <li class="nav-item">
            <a class="nav-link {{ (Request::segment(1) === 'customer-list')? 'active' : '' }}" href="/customer-list"><i class="material-icons icon">group</i><span class="menu-text">Customers</span></a>
        </li>
        <li class="nav-item">
            <a class="nav-link {{ (Request::segment(1) === 'product-list')? 'active' : '' }}" href="/product-list"><i class="material-icons icon">fastfood</i><span class="menu-text">Products</span></a>
        </li>
        <li class="nav-item">
            <a class="nav-link {{ (Request::segment(1) === 'store-list')? 'active' : '' }}" href="/store-list"><i class="material-icons icon">local_convenience_store</i><span class="menu-text">Stores</span></a>
        </li>
    </ul>
</div>