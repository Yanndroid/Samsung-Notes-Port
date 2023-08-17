.class public Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/ToastModelFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ToastModelFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/samsung/android/app/notes/sync/infos/ModelType;)Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/IModelToast;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/ToastModelFactory$1;->$SwitchMap$com$samsung$android$app$notes$sync$infos$ModelType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "ToastModelFactory"

    const-string v0, "invalid model type!"

    invoke-static {p0, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/SyncToast;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/SyncToast;-><init>()V

    return-object p0

    :cond_1
    new-instance p0, Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/ShareToast;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/sync/ui/toast/ShareToast;-><init>()V

    return-object p0
.end method
