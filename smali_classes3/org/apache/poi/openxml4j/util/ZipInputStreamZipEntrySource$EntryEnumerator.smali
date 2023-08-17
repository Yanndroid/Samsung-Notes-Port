.class Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource$EntryEnumerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EntryEnumerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Ljava/util/zip/ZipEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;


# direct methods
.method private constructor <init>(Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource$EntryEnumerator;->this$0:Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;->access$100(Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource$EntryEnumerator;->iterator:Ljava/util/Iterator;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource$EntryEnumerator;-><init>(Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource;)V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource$EntryEnumerator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource$EntryEnumerator;->nextElement()Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/util/zip/ZipEntry;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/openxml4j/util/ZipInputStreamZipEntrySource$EntryEnumerator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    return-object v0
.end method
