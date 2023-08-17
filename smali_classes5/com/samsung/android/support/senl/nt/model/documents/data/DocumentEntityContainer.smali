.class public abstract Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Entity::",
        "Landroid/os/Parcelable;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DocumentEntityContainer"


# instance fields
.field private mEntity:Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TEntity;"
        }
    .end annotation
.end field

.field private mOriginalEntity:Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TEntity;"
        }
    .end annotation
.end field

.field private mRollbackEntity:Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TEntity;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Parcelable;Landroid/os/Parcelable;)V
    .locals 0
    .param p1    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEntity;TEntity;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->setOriginalEntity(Landroid/os/Parcelable;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->setEntity(Landroid/os/Parcelable;)V

    return-void
.end method

.method private setRollbackEntity(Landroid/os/Parcelable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEntity;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->mRollbackEntity:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEntity()Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TEntity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->mEntity:Landroid/os/Parcelable;

    return-object v0
.end method

.method public getOriginalEntity()Landroid/os/Parcelable;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TEntity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->mOriginalEntity:Landroid/os/Parcelable;

    return-object v0
.end method

.method public getRollbackEntity()Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TEntity;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->mRollbackEntity:Landroid/os/Parcelable;

    return-object v0
.end method

.method public isChanged()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getOriginalEntity()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setEntity(Landroid/os/Parcelable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEntity;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->mEntity:Landroid/os/Parcelable;

    return-void
.end method

.method public setOriginalEntity(Landroid/os/Parcelable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TEntity;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->mOriginalEntity:Landroid/os/Parcelable;

    invoke-direct {p0, v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->setRollbackEntity(Landroid/os/Parcelable;)V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->mOriginalEntity:Landroid/os/Parcelable;

    return-void
.end method

.method public abstract updateOriginalEntityWithLatest()V
.end method
