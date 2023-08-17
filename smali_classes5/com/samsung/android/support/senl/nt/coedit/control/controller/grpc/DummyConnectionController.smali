.class public Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/DummyConnectionController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getJWT(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract$JwtResultItem;
    .locals 0

    new-instance p1, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract$JwtResultItem;

    sget-object p2, Lcom/samsung/android/support/senl/nt/coedit/common/CoeditConstants;->SERVER_HOST:Ljava/lang/String;

    const-string p3, "SERVER_ERRORUNEXPECTED"

    invoke-direct {p1, p3, p2}, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract$JwtResultItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public getJwtMode(Ljava/lang/String;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public isAlreadySnapReleased()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onContentFileUploadError(I)V
    .locals 0

    return-void
.end method

.method public pauseConcurrency(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public reconnect(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public resumeConcurrency(Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
