module "frontend" {
    source                  = "./vendor/modules/app/"       # Terrafile clones the backend module mentioned in the Terrafile and keeps it local to the root 
    ENV                     = var.ENV
    INTERNAL                = var.INTERNAL 
    COMPONENT               = var.COMPONENT
    APP_PORT                = var.APP_PORT
    SPOT_INSTANCE_COUNT     = var.SPOT_INSTANCE_COUNT
    SPOT_INSTANCE_TYPE      = var.SPOT_INSTANCE_TYPE
    OD_INSTANCE_COUNT       = var.OD_INSTANCE_COUNT
    OD_INSTANCE_TYPE        = var.OD_INSTANCE_TYPE
    APP_VERSION             = var.APP_VERSION
}
