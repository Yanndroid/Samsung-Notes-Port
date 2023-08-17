.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteEnableStateData;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/AbsStoredData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/AbsStoredData<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_DIRECT_WRITE_ENABLE:Ljava/lang/Boolean;

.field private static final KEY_DIRECT_WRITE_ENABLE:Ljava/lang/String; = "KEY_DIRECT_WRITE_ENABLE"


# instance fields
.field private currentIsEnable:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteEnableStateData;->DEFAULT_DIRECT_WRITE_ENABLE:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteEnableStateData;->DEFAULT_DIRECT_WRITE_ENABLE:Ljava/lang/Boolean;

    const-string v1, "KEY_DIRECT_WRITE_ENABLE"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/AbsStoredData;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteEnableStateData;->currentIsEnable:Z

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Boolean;
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteEnableStateData;->currentIsEnable:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteEnableStateData;->getValue()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteEnableStateData;->getValue()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "KEY_DIRECT_WRITE_ENABLE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteEnableStateData;->DEFAULT_DIRECT_WRITE_ENABLE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "KEY_DIRECT_WRITE_ENABLE"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteEnableStateData;->setValue(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setValue(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteEnableStateData;->currentIsEnable:Z

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteEnableStateData;->setValue(Ljava/lang/Boolean;)V

    return-void
.end method
