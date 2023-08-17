.class public Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mKey:Ljava/lang/String;

.field private final mObject:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataBase;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataBase;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataInfo;->mKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataInfo;->mObject:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataBase;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataInfo;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataBase;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataInfo;->mObject:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataBase;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VMetaDataInfo [mKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataInfo;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mObject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataInfo;->mObject:Lcom/samsung/android/support/senl/document/memoconverter/core/SNBUtils/vml/vector/shape/metadata/VMetaDataBase;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
