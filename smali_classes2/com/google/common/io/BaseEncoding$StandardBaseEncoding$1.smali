.class Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->encodingStream(Ljava/io/Writer;)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public bitBuffer:I

.field public bitBufferLength:I

.field public final synthetic this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

.field public final synthetic val$out:Ljava/io/Writer;

.field public writtenChars:I


# direct methods
.method public constructor <init>(Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;Ljava/io/Writer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    iput-object p2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->val$out:Ljava/io/Writer;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->bitBuffer:I

    iput p1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->bitBufferLength:I

    iput p1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->writtenChars:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    iget v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->bitBufferLength:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->bitBuffer:I

    iget-object v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    iget-object v2, v2, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v3, v2, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    sub-int/2addr v3, v0

    shl-int v0, v1, v3

    iget v1, v2, Lcom/google/common/io/BaseEncoding$Alphabet;->mask:I

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->val$out:Ljava/io/Writer;

    invoke-virtual {v2, v0}, Lcom/google/common/io/BaseEncoding$Alphabet;->encode(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    iget v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->writtenChars:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->writtenChars:I

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    iget-object v0, v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    if-eqz v0, :cond_0

    :goto_0
    iget v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->writtenChars:I

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    iget-object v2, v1, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v2, v2, Lcom/google/common/io/BaseEncoding$Alphabet;->charsPerChunk:I

    rem-int/2addr v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->val$out:Ljava/io/Writer;

    iget-object v1, v1, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->paddingChar:Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    iget v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->writtenChars:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->writtenChars:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->val$out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->val$out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 3

    iget v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->bitBuffer:I

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->bitBuffer:I

    iget p1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->bitBufferLength:I

    add-int/lit8 p1, p1, 0x8

    :goto_0
    iput p1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->bitBufferLength:I

    iget p1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->bitBufferLength:I

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    iget-object v0, v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v1, v0, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    if-lt p1, v1, :cond_0

    iget v2, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->bitBuffer:I

    sub-int/2addr p1, v1

    shr-int p1, v2, p1

    iget v1, v0, Lcom/google/common/io/BaseEncoding$Alphabet;->mask:I

    and-int/2addr p1, v1

    iget-object v1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->val$out:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Lcom/google/common/io/BaseEncoding$Alphabet;->encode(I)C

    move-result p1

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(I)V

    iget p1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->writtenChars:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->writtenChars:I

    iget p1, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->bitBufferLength:I

    iget-object v0, p0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding$1;->this$0:Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    iget-object v0, v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;->alphabet:Lcom/google/common/io/BaseEncoding$Alphabet;

    iget v0, v0, Lcom/google/common/io/BaseEncoding$Alphabet;->bitsPerChar:I

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
