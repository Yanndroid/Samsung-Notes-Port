.class Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver;->addSettingsContentChangedCallback(Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver$SettingsContentChangedCallback;Ljava/lang/String;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver$1;->this$0:Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver$1;->this$0:Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver;->a(Lcom/samsung/android/support/senl/cm/base/framework/observer/SettingsContentObserver;ZLandroid/net/Uri;)V

    return-void
.end method
