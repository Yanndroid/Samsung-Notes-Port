.class public Lnet/lingala/zip4j/model/ZipModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private archiveExtraDataRecord:Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;

.field private centralDirectory:Lnet/lingala/zip4j/model/CentralDirectory;

.field private dataDescriptorList:Ljava/util/List;

.field private end:J

.field private endCentralDirRecord:Lnet/lingala/zip4j/model/EndCentralDirRecord;

.field private fileNameCharset:Ljava/lang/String;

.field private isNestedZipFile:Z

.field private isZip64Format:Z

.field private localFileHeaderList:Ljava/util/List;

.field private splitArchive:Z

.field private splitLength:J

.field private start:J

.field private zip64EndCentralDirLocator:Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

.field private zip64EndCentralDirRecord:Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

.field private zipFile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lnet/lingala/zip4j/model/ZipModel;->splitLength:J

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getArchiveExtraDataRecord()Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;
    .locals 1

    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->archiveExtraDataRecord:Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;

    return-object v0
.end method

.method public getCentralDirectory()Lnet/lingala/zip4j/model/CentralDirectory;
    .locals 1

    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->centralDirectory:Lnet/lingala/zip4j/model/CentralDirectory;

    return-object v0
.end method

.method public getDataDescriptorList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->dataDescriptorList:Ljava/util/List;

    return-object v0
.end method

.method public getEnd()J
    .locals 2

    iget-wide v0, p0, Lnet/lingala/zip4j/model/ZipModel;->end:J

    return-wide v0
.end method

.method public getEndCentralDirRecord()Lnet/lingala/zip4j/model/EndCentralDirRecord;
    .locals 1

    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->endCentralDirRecord:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    return-object v0
.end method

.method public getFileNameCharset()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->fileNameCharset:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalFileHeaderList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->localFileHeaderList:Ljava/util/List;

    return-object v0
.end method

.method public getSplitLength()J
    .locals 2

    iget-wide v0, p0, Lnet/lingala/zip4j/model/ZipModel;->splitLength:J

    return-wide v0
.end method

.method public getStart()J
    .locals 2

    iget-wide v0, p0, Lnet/lingala/zip4j/model/ZipModel;->start:J

    return-wide v0
.end method

.method public getZip64EndCentralDirLocator()Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;
    .locals 1

    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->zip64EndCentralDirLocator:Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    return-object v0
.end method

.method public getZip64EndCentralDirRecord()Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;
    .locals 1

    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->zip64EndCentralDirRecord:Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    return-object v0
.end method

.method public getZipFile()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnet/lingala/zip4j/model/ZipModel;->zipFile:Ljava/lang/String;

    return-object v0
.end method

.method public isNestedZipFile()Z
    .locals 1

    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipModel;->isNestedZipFile:Z

    return v0
.end method

.method public isSplitArchive()Z
    .locals 1

    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipModel;->splitArchive:Z

    return v0
.end method

.method public isZip64Format()Z
    .locals 1

    iget-boolean v0, p0, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format:Z

    return v0
.end method

.method public setArchiveExtraDataRecord(Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;)V
    .locals 0

    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->archiveExtraDataRecord:Lnet/lingala/zip4j/model/ArchiveExtraDataRecord;

    return-void
.end method

.method public setCentralDirectory(Lnet/lingala/zip4j/model/CentralDirectory;)V
    .locals 0

    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->centralDirectory:Lnet/lingala/zip4j/model/CentralDirectory;

    return-void
.end method

.method public setDataDescriptorList(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->dataDescriptorList:Ljava/util/List;

    return-void
.end method

.method public setEnd(J)V
    .locals 0

    iput-wide p1, p0, Lnet/lingala/zip4j/model/ZipModel;->end:J

    return-void
.end method

.method public setEndCentralDirRecord(Lnet/lingala/zip4j/model/EndCentralDirRecord;)V
    .locals 0

    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->endCentralDirRecord:Lnet/lingala/zip4j/model/EndCentralDirRecord;

    return-void
.end method

.method public setFileNameCharset(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->fileNameCharset:Ljava/lang/String;

    return-void
.end method

.method public setLocalFileHeaderList(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->localFileHeaderList:Ljava/util/List;

    return-void
.end method

.method public setNestedZipFile(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipModel;->isNestedZipFile:Z

    return-void
.end method

.method public setSplitArchive(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipModel;->splitArchive:Z

    return-void
.end method

.method public setSplitLength(J)V
    .locals 0

    iput-wide p1, p0, Lnet/lingala/zip4j/model/ZipModel;->splitLength:J

    return-void
.end method

.method public setStart(J)V
    .locals 0

    iput-wide p1, p0, Lnet/lingala/zip4j/model/ZipModel;->start:J

    return-void
.end method

.method public setZip64EndCentralDirLocator(Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;)V
    .locals 0

    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->zip64EndCentralDirLocator:Lnet/lingala/zip4j/model/Zip64EndCentralDirLocator;

    return-void
.end method

.method public setZip64EndCentralDirRecord(Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;)V
    .locals 0

    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->zip64EndCentralDirRecord:Lnet/lingala/zip4j/model/Zip64EndCentralDirRecord;

    return-void
.end method

.method public setZip64Format(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/lingala/zip4j/model/ZipModel;->isZip64Format:Z

    return-void
.end method

.method public setZipFile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipModel;->zipFile:Ljava/lang/String;

    return-void
.end method
