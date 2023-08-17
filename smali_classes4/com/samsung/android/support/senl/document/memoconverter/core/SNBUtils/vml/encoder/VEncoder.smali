.class public Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/encoder/VEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mEncodeData:Ljava/lang/String;

.field private mMetaDataInfos:Ljava/util/ArrayList;
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode()V
    .locals 0

    return-void
.end method

.method public getEncodeData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/encoder/VEncoder;->mEncodeData:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaDataInfos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/encoder/VEncoder;->mMetaDataInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setEncodeData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/encoder/VEncoder;->mEncodeData:Ljava/lang/String;

    return-void
.end method

.method public setMetaDataInfos(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/encoder/VEncoder;->mMetaDataInfos:Ljava/util/ArrayList;

    return-void
.end method
