.class public Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/openxml4j/util/ZipEntrySource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource$FakeZipEntry;,
        Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource$EntryEnumerator;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field private zipEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource$FakeZipEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;->zipEntries:Ljava/util/ArrayList;

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource$FakeZipEntry;

    invoke-direct {v2, v1, p1}, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource$FakeZipEntry;-><init>(Ljava/util/zip/ZipEntry;Ljava/io/InputStream;)V

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/util/ZipSecureFile$ThresholdInputStream;->closeEntry()V

    iget-object v1, p0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;->zipEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->close()V

    return-void
.end method

.method public static synthetic access$100(Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;->zipEntries:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;->zipEntries:Ljava/util/ArrayList;

    return-void
.end method

.method public getEntries()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "+",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource$EntryEnumerator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource$EntryEnumerator;-><init>(Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource$1;)V

    return-object v0
.end method

.method public getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .locals 0

    check-cast p1, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource$FakeZipEntry;

    invoke-virtual {p1}, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource$FakeZipEntry;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;->zipEntries:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
