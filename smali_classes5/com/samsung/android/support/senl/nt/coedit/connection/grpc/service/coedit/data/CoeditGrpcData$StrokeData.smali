.class public Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData$StrokeData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StrokeData"
.end annotation


# instance fields
.field public mBytes:[B

.field public final mObjId:Ljava/lang/String;

.field public final mObjectBinaryHash:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData$StrokeData;->mObjId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData$StrokeData;->mObjectBinaryHash:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public findObjectBinaryHash([B)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData$StrokeData;->mBytes:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public getObjId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData$StrokeData;->mObjId:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectBinaryHash()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData$StrokeData;->mObjectBinaryHash:Ljava/lang/String;

    return-object v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData$StrokeData;->mBytes:[B

    return-void
.end method

.method public setBytes([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/connection/grpc/service/coedit/data/CoeditGrpcData$StrokeData;->mBytes:[B

    return-void
.end method
