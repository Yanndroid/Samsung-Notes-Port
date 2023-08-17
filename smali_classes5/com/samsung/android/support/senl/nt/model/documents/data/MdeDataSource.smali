.class public interface abstract Lcom/samsung/android/support/senl/nt/model/documents/data/MdeDataSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# virtual methods
.method public abstract getGroupId()Ljava/lang/String;
.end method

.method public abstract getOwnerId()Ljava/lang/String;
.end method

.method public abstract getSpaceId()Ljava/lang/String;
.end method

.method public abstract setGroupId(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setOwnerId(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setSpaceId(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
