.class public Lnet/lingala/zip4j/model/CentralDirectory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private digitalSignature:Lnet/lingala/zip4j/model/DigitalSignature;

.field private fileHeaders:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDigitalSignature()Lnet/lingala/zip4j/model/DigitalSignature;
    .locals 1

    iget-object v0, p0, Lnet/lingala/zip4j/model/CentralDirectory;->digitalSignature:Lnet/lingala/zip4j/model/DigitalSignature;

    return-object v0
.end method

.method public getFileHeaders()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lnet/lingala/zip4j/model/CentralDirectory;->fileHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setDigitalSignature(Lnet/lingala/zip4j/model/DigitalSignature;)V
    .locals 0

    iput-object p1, p0, Lnet/lingala/zip4j/model/CentralDirectory;->digitalSignature:Lnet/lingala/zip4j/model/DigitalSignature;

    return-void
.end method

.method public setFileHeaders(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lnet/lingala/zip4j/model/CentralDirectory;->fileHeaders:Ljava/util/ArrayList;

    return-void
.end method
