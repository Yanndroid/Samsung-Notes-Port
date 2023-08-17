.class public Lnet/lingala/zip4j/model/ExtraDataRecord;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private data:[B

.field private header:J

.field private sizeOfData:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    iget-object v0, p0, Lnet/lingala/zip4j/model/ExtraDataRecord;->data:[B

    return-object v0
.end method

.method public getHeader()J
    .locals 2

    iget-wide v0, p0, Lnet/lingala/zip4j/model/ExtraDataRecord;->header:J

    return-wide v0
.end method

.method public getSizeOfData()I
    .locals 1

    iget v0, p0, Lnet/lingala/zip4j/model/ExtraDataRecord;->sizeOfData:I

    return v0
.end method

.method public setData([B)V
    .locals 0

    iput-object p1, p0, Lnet/lingala/zip4j/model/ExtraDataRecord;->data:[B

    return-void
.end method

.method public setHeader(J)V
    .locals 0

    iput-wide p1, p0, Lnet/lingala/zip4j/model/ExtraDataRecord;->header:J

    return-void
.end method

.method public setSizeOfData(I)V
    .locals 0

    iput p1, p0, Lnet/lingala/zip4j/model/ExtraDataRecord;->sizeOfData:I

    return-void
.end method
