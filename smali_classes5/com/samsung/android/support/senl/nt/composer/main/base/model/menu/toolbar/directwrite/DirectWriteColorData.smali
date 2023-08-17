.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/DirectWriteColorData;
.super Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/AbsStoredData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/AbsStoredData<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_DIRECT_WRITE_COLOR:I = 0xff

.field private static final KEY_DIRECT_WRITE_COLOR:Ljava/lang/String; = "KEY_DIRECT_WRITE_COLOR"


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "KEY_DIRECT_WRITE_COLOR"

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/AbsStoredData;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/AbsStoredData;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/AbsStoredData;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic restoreState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/AbsStoredData;->restoreState(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/menu/toolbar/directwrite/AbsStoredData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
