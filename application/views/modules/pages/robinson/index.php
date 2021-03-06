<div id="robinson">

    <div class="robinson-holidays">

        <div class="container">

            <div class="row">

                <div class="col-xs-12 col-md-3 text-center">
                    <img src="<?php echo base_url('assets/img/modules/robinson/holiday-tiles/1.jpg'); ?>" alt="">
                </div>
                <div class="col-xs-12 col-md-3 text-center">
                    <img src="<?php echo base_url('assets/img/modules/robinson/holiday-tiles/2.jpg'); ?>" alt="">
                </div>
                <div class="col-xs-12 col-md-3 text-center">
                    <img src="<?php echo base_url('assets/img/modules/robinson/holiday-tiles/3.jpg'); ?>" alt="">
                </div>
                <div class="col-xs-12 col-md-3 text-center">
                    <img src="<?php echo base_url('assets/img/modules/robinson/holiday-tiles/4.jpg'); ?>" alt="">
                </div>

            </div>

        </div>

    </div>

    <div id="build-a-package">
        <div class="container">
            <div class="row">
                <div class="col-xs-8">

                    <div class="text-right">
                        <img class="build-text-arrow" src="<?php echo base_url('assets/img/modules/contact/build-text-arrow.png'); ?>"
                             alt="">
                    </div>

                </div>

                <div class="col-xs-4">

                    <?php $this->load->view('modules/package-builder/index'); ?>

                </div>
            </div>
        </div>
    </div>

    <div class="packages">

        <div class="container">

            <div class="row">

                <div class="col-xs-12 col-md-6">
                    <?php $this->load->view('modules/package-card/index'); ?>
                </div>

                <div class="col-xs-12 col-md-6">
                    <?php $this->load->view('modules/package-card/index'); ?>
                </div>

            </div>
        </div>
    </div>

    <div class="coloured-tiles">

        <?php $this->load->view('modules/tiles/robinson-holiday-types/index'); ?>
    </div>

    <div class="about-robinson">

        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-md-4">
                    <h4>About <b>Robinson</b></h4>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pretium ut justo at scelerisque. Donec feugiat ligula nec nisl ornare viverra. Aliquam accumsan risus purus, id hendrerit velit dictum at. Mauris eget felis ex. Proin pharetra non purus et posuere. Donec elementum sit amet turpis quis molestie. Cras posuere commodo dolor, eget porttitor ante sollicitudin et. Suspendisse at posuere ex. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pretium ut justo at scelerisque. Donec feugiat ligula nec nisl ornare viverra. Aliquam accumsan risus purus, id hendrerit velit dictum at.
                    </p>

                    <button class="pt-btn">More about us <i class="fa fa-angle-right"></i></button>
                </div>
                <div class="col-xs-12 col-md-4 text-center">

                    <img src="<?php echo base_url('assets/img/modules/robinson/robinson-brochure.jpg'); ?>" alt="">

                    <button class="pt-btn">Download brochure <i class="fa fa-angle-right"></i></button>

                </div>
                <div class="col-xs-12 col-md-4">
                    <h4>Robinson <b>news</b></h4>

                    <span class="date">01.10.2016</span>

                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pretium ut justo at scelerisque. Donec feugiat ligula nec nisl ornare viverra. Aliquam accumsan risus purus, id hendrerit velit dictum at. Mauris eget felis ex. Proin pharetra non purus et posuere. Donec elementum sit amet turpis quis molestie. Cras posuere commodo dolor, eget porttitor ante sollicitudin et. Suspendisse at posuere ex. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas pretium ut justo at scelerisque. Donec feugiat ligula nec nisl ornare viverra. Aliquam accumsan risus purus, id hendrerit velit dictum at.
                    </p>

                    <button class="pt-btn">Read more news <i class="fa fa-angle-right"></i></button>
                </div>
            </div>

        </div>


    </div>

    <div class="packages">

        <div class="container">

            <div class="row">

                <div class="col-xs-12 col-md-6">
                    <?php $this->load->view('modules/package-card/index'); ?>
                </div>

                <div class="col-xs-12 col-md-6">
                    <?php $this->load->view('modules/package-card/index'); ?>
                </div>

            </div>
        </div>
    </div>

</div>