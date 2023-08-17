.class public abstract Lcom/samsung/android/support/senl/nt/model/documents/data/TagData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/android/support/senl/nt/model/documents/data/TagData;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/model/documents/data/TagData;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/TagData;->clone()Lcom/samsung/android/support/senl/nt/model/documents/data/TagData;

    move-result-object v0

    return-object v0
.end method

.method public abstract getColor()I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract setColor(I)Lcom/samsung/android/support/senl/nt/model/documents/data/TagData;
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
.end method

.method public abstract setName(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/model/documents/data/TagData;
.end method
