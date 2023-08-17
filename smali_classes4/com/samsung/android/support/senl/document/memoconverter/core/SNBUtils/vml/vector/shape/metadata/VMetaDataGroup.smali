.class public Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataGroup;
.super Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataBase;
.source "SourceFile"


# static fields
.field public static final NAME:Ljava/lang/String; = "v:group"


# instance fields
.field private mCoreAttrs:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;

.field private mMetaDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getCoreAttrs()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataGroup;->mCoreAttrs:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;

    return-object v0
.end method

.method public getMetaDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataGroup;->mMetaDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCoreAttrs(Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataGroup;->mCoreAttrs:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;

    return-void
.end method

.method public setDefaultMember()V
    .locals 1

    new-instance v0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataGroup;->mCoreAttrs:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataGroup;->mMetaDataList:Ljava/util/ArrayList;

    return-void
.end method

.method public setMetaDataList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataGroup;->mMetaDataList:Ljava/util/ArrayList;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Group [mCoreAttrs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataGroup;->mCoreAttrs:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/attribute/VAttributeCore;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMetaDataList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataGroup;->mMetaDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
