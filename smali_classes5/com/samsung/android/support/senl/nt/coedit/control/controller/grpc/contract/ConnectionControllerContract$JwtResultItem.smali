.class public Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract$JwtResultItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JwtResultItem"
.end annotation


# instance fields
.field public mJwt:Ljava/lang/String;

.field public mRegionDomain:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract$JwtResultItem;->mJwt:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract$JwtResultItem;->mRegionDomain:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getJwt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract$JwtResultItem;->mJwt:Ljava/lang/String;

    return-object v0
.end method

.method public getRegionDomain()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/coedit/control/controller/grpc/contract/ConnectionControllerContract$JwtResultItem;->mRegionDomain:Ljava/lang/String;

    return-object v0
.end method
