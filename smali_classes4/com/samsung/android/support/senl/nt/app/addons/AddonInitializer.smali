.class public Lcom/samsung/android/support/senl/nt/app/addons/AddonInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/nt/app/addons/PlatformUtilImpl;

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/nt/app/addons/PlatformUtilImpl;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/samsung/android/support/senl/addons/base/utils/PlatformUtil;->setDelegate(Lcom/samsung/android/support/senl/addons/base/utils/IPlatformDelegate;)V

    return-void
.end method
