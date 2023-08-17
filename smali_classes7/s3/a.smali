.class public final synthetic Ls3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver$SettingsContentChangedCallback;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls3/a;->a:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    return-void
.end method


# virtual methods
.method public final onChanged(ZLandroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Ls3/a;->a:Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;->a(Lcom/samsung/android/support/senl/addons/base/model/setting/SettingsModel;ZLandroid/net/Uri;)V

    return-void
.end method
