.class public Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/entity/WordDocumentEntityContainer;
.super Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer<",
        "Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/entity/WordDocumentEntityContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/entity/WordDocumentEntityContainer$1;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/entity/WordDocumentEntityContainer$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/entity/WordDocumentEntityContainer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    const-class v1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;-><init>(Landroid/os/Parcelable;Landroid/os/Parcelable;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/entity/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/model/repository/data/sdoc/entity/WordDocumentEntityContainer;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;)V
    .locals 1
    .param p1    # Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->clone()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;-><init>(Landroid/os/Parcelable;Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public updateOriginalEntityWithLatest()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;->clone()Lcom/samsung/android/support/senl/nt/data/database/core/document/entry/entity/NotesDocumentEntity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->setOriginalEntity(Landroid/os/Parcelable;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getOriginalEntity()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/nt/model/documents/data/DocumentEntityContainer;->getEntity()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
