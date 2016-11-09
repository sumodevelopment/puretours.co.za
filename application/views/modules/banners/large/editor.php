<div class="page">
    <div class="container">
        <div class="row">
            <div class="col-xs-4">
                <h4>Banner image</h4>
                <form action="">
                    <div class="form-group">
                        <input type="file" class="btn btn-info form-control" placeholder="Choose your background image" />
                    </div>
                    <div class="text-right">
                        <button type="button" class="btn btn-danger">Cancel</button>
                        <button type="button" class="btn btn-success">Save</button>
                    </div>
                </form>
            </div>
            <div class="col-xs-8">
                <h4>Preview</h4>
                <div class="banner-preview">
                    <div class="src">
                        <img src="<?php echo base_url($this->resources->data['page']->modules['bannerLarge']->data->src); ?>" alt="" class="img-responsive">
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>