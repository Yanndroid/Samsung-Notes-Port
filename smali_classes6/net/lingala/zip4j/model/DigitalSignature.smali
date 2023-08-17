.class public Lnet/lingala/zip4j/model/DigitalSignature;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private headerSignature:I

.field private signatureData:Ljava/lang/String;

.field private sizeOfData:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeaderSignature()I
    .locals 1

    iget v0, p0, Lnet/lingala/zip4j/model/DigitalSignature;->headerSignature:I

    return v0
.end method

.method public getSignatureData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/lingala/zip4j/model/DigitalSignature;->signatureData:Ljava/lang/String;

    return-object v0
.end method

.method public getSizeOfData()I
    .locals 1

    iget v0, p0, Lnet/lingala/zip4j/model/DigitalSignature;->sizeOfData:I

    return v0
.end method

.method public setHeaderSignature(I)V
    .locals 0

    iput p1, p0, Lnet/lingala/zip4j/model/DigitalSignature;->headerSignature:I

    return-void
.end method

.method public setSignatureData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/lingala/zip4j/model/DigitalSignature;->signatureData:Ljava/lang/String;

    return-void
.end method

.method public setSizeOfData(I)V
    .locals 0

    iput p1, p0, Lnet/lingala/zip4j/model/DigitalSignature;->sizeOfData:I

    return-void
.end method
