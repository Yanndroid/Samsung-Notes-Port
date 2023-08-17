.class public Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardFailToConvertStorageError;
.super Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;
.source "SourceFile"


# instance fields
.field private final mFailCount:I


# direct methods
.method public constructor <init>(I)V
    .locals 7

    sget v3, Lcom/samsung/android/support/senl/nt/app/R$plurals;->tipcard_fail_to_convert_storage_error:I

    sget v4, Lcom/samsung/android/support/senl/nt/app/R$string;->OK:I

    const/high16 v1, 0x400000

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;-><init>(IIIIII)V

    iput p1, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardFailToConvertStorageError;->mFailCount:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getMessage()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/samsung/android/support/senl/cm/base/framework/support/BaseUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;->mBodyResourceId:I

    iget v2, p0, Lcom/samsung/android/support/senl/nt/app/main/noteslist/tipcard/TipCardFailToConvertStorageError;->mFailCount:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNeutralButtonResourceId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
