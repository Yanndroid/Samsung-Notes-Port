.class final Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OutputStreamImpl"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field private static final _initialBufSize:I = 0x1000


# instance fields
.field private _buf:[B

.field private _free:I

.field private _in:I

.field private _out:I

.field public final synthetic this$0:Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->this$0:Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;Lorg/apache/xmlbeans/impl/store/Saver$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;-><init>(Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;)V

    return-void
.end method


# virtual methods
.method public getAvailable()I
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_buf:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_free:I

    sub-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public read()I
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->this$0:Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->access$100(Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_buf:[B

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_out:I

    aget-byte v3, v0, v2

    add-int/2addr v2, v1

    array-length v0, v0

    rem-int/2addr v2, v0

    iput v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_out:I

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_free:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_free:I

    return v3
.end method

.method public read([BII)I
    .locals 4

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->this$0:Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;

    invoke-static {v0, p3}, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->access$100(Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-lez p3, :cond_4

    if-ge v0, p3, :cond_1

    move p3, v0

    :cond_1
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_out:I

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_in:I

    if-ge v0, v2, :cond_2

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_buf:[B

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_buf:[B

    array-length v3, v2

    sub-int/2addr v3, v0

    if-lt v3, p3, :cond_3

    invoke-static {v2, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    invoke-static {v2, v0, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_buf:[B

    add-int/2addr p2, v3

    sub-int v2, p3, v3

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_out:I

    add-int/2addr p1, p3

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_buf:[B

    array-length p2, p2

    rem-int/2addr p1, p2

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_out:I

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_free:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_free:I

    return p3

    :cond_4
    return v1
.end method

.method public resize(I)V
    .locals 6

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_buf:[B

    if-nez v0, :cond_0

    const/16 v0, 0x1000

    goto :goto_0

    :cond_0
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->getAvailable()I

    move-result v1

    :goto_1
    sub-int v2, v0, v1

    if-ge v2, p1, :cond_1

    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    new-array p1, v0, [B

    if-lez v1, :cond_3

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_in:I

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_out:I

    const/4 v4, 0x0

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_buf:[B

    invoke-static {v2, v3, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_buf:[B

    sub-int v2, v1, v2

    invoke-static {v5, v3, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_buf:[B

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_in:I

    sub-int v5, v1, v3

    invoke-static {v2, v4, p1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    iput v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_out:I

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_in:I

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_free:I

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_buf:[B

    array-length v2, v2

    sub-int/2addr v0, v2

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_free:I

    goto :goto_3

    :cond_3
    iput v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_free:I

    :goto_3
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_buf:[B

    return-void
.end method

.method public write(I)V
    .locals 3

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_free:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->resize(I)V

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_buf:[B

    iget v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_in:I

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    add-int/2addr v2, v1

    array-length p1, v0

    rem-int/2addr v2, p1

    iput v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_in:I

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_free:I

    sub-int/2addr p1, v1

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_free:I

    return-void
.end method

.method public write([BII)V
    .locals 5

    if-eqz p3, :cond_3

    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_free:I

    if-ge v0, p3, :cond_0

    invoke-virtual {p0, p3}, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->resize(I)V

    :cond_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_in:I

    iget v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_out:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iput v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_out:I

    iput v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_in:I

    :cond_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_buf:[B

    array-length v1, v0

    iget v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_in:I

    sub-int/2addr v1, v3

    iget v4, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_out:I

    if-le v3, v4, :cond_2

    if-lt p3, v1, :cond_2

    invoke-static {p1, p2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_buf:[B

    sub-int v1, p3, v1

    invoke-static {p1, p2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_in:I

    add-int/2addr p1, p3

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_buf:[B

    array-length p2, p2

    rem-int/2addr p1, p2

    goto :goto_0

    :cond_2
    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_in:I

    add-int/2addr p1, p3

    :goto_0
    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_in:I

    iget p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_free:I

    sub-int/2addr p1, p3

    iput p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->_free:I

    :cond_3
    return-void
.end method
