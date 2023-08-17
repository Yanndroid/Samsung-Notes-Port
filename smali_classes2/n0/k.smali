.class public Ln0/k;
.super Ln0/a;
.source "SourceFile"


# static fields
.field public static T:[B

.field public static U:I

.field public static V:[B

.field public static W:I

.field public static X:I

.field public static Y:I

.field public static Z:I

.field public static a0:I

.field public static b0:I

.field public static c0:I

.field public static d0:I


# instance fields
.field public Q:[B

.field public R:Lcom/samsung/android/app/notes/sync/network/networkutils/g;

.field public S:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x4

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Ln0/k;->T:[B

    sput v0, Ln0/k;->U:I

    const/16 v1, 0xc

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    const/4 v4, 0x1

    aput-byte v3, v1, v4

    const/4 v4, 0x2

    aput-byte v3, v1, v4

    const/4 v4, 0x3

    aput-byte v3, v1, v4

    int-to-byte v3, v0

    aput-byte v3, v1, v0

    const/4 v3, 0x4

    const/16 v4, 0x8

    shr-int/2addr v3, v4

    int-to-byte v3, v3

    const/4 v5, 0x5

    aput-byte v3, v1, v5

    shr-int/lit8 v3, v0, 0x10

    int-to-byte v3, v3

    const/4 v5, 0x6

    aput-byte v3, v1, v5

    shr-int/lit8 v3, v0, 0x18

    int-to-byte v3, v3

    const/4 v5, 0x7

    aput-byte v3, v1, v5

    const/16 v3, -0x60

    aput-byte v3, v1, v4

    const/16 v3, 0x9

    const/16 v5, 0xf

    aput-byte v5, v1, v3

    const/16 v3, 0xa

    aput-byte v2, v1, v3

    const/16 v3, 0xb

    aput-byte v2, v1, v3

    sput-object v1, Ln0/k;->V:[B

    sput v0, Ln0/k;->W:I

    sput v0, Ln0/k;->X:I

    sput v0, Ln0/k;->Y:I

    add-int v1, v0, v0

    add-int/2addr v1, v0

    sput v1, Ln0/k;->Z:I

    sput v2, Ln0/k;->a0:I

    sput v0, Ln0/k;->b0:I

    sput v4, Ln0/k;->c0:I

    sput v1, Ln0/k;->d0:I

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Lk0/b;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Ln0/a;-><init>(ILk0/b;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Ln0/k;->S:Z

    return-void
.end method

.method public static H([BI)I
    .locals 2

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static J([B)I
    .locals 1

    invoke-static {p0}, Ln0/k;->O([B)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget v0, Ln0/k;->b0:I

    invoke-static {p0, v0}, Ln0/k;->H([BI)I

    move-result p0

    return p0
.end method

.method public static K([B)I
    .locals 1

    invoke-static {p0}, Ln0/k;->O([B)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget v0, Ln0/k;->c0:I

    invoke-static {p0, v0}, Ln0/k;->H([BI)I

    move-result p0

    return p0
.end method

.method public static L([B)I
    .locals 2

    invoke-static {p0}, Ln0/k;->O([B)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget v0, Ln0/k;->b0:I

    sget v1, Ln0/k;->X:I

    add-int/2addr v0, v1

    invoke-static {p0}, Ln0/k;->J([B)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public static O([B)Z
    .locals 5

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    sget-object v2, Ln0/k;->T:[B

    aget-byte v3, v2, v0

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    aget-byte v3, p0, v1

    aget-byte v4, v2, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x2

    aget-byte v4, p0, v3

    aget-byte v3, v2, v3

    if-ne v4, v3, :cond_0

    const/4 v3, 0x3

    aget-byte p0, p0, v3

    aget-byte v2, v2, v3

    if-ne p0, v2, :cond_0

    return v1

    :cond_0
    return v0
.end method


# virtual methods
.method public A(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "object"

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p0, p1, v3}, Ln0/k;->y(Lorg/xmlpull/v1/XmlPullParser;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_1
    invoke-static {p1, v1}, Lq0/d;->b(Lorg/xmlpull/v1/XmlPullParser;I)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p0, Ln0/a;->O:Lk0/b;

    iget-object p1, p1, Lk0/b;->c:Lk0/c;

    invoke-virtual {p1, p0}, Lk0/c;->a(Ln0/k;)V

    return-void

    :cond_3
    :goto_2
    if-eq v3, v0, :cond_4

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseXml - invalid eventType = ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WCon_ObjectStroke"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1}, Ln0/k;->z(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1
.end method

.method public D(Ljava/io/RandomAccessFile;)V
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    sub-long v2, v0, v2

    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    move-result v2

    invoke-static {p1}, Lq0/b;->p(Ljava/io/RandomAccessFile;)I

    invoke-super {p0, p1}, Ln0/a;->D(Ljava/io/RandomAccessFile;)V

    int-to-long v2, v2

    add-long/2addr v2, v0

    const-wide/16 v4, 0x20

    sub-long/2addr v2, v4

    sub-long/2addr v2, v0

    long-to-int v2, v2

    new-array v2, v2, [B

    iput-object v2, p0, Ln0/k;->Q:[B

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Ln0/k;->Q:[B

    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "WCon_ObjectStroke"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public G([B)V
    .locals 4

    invoke-static {p1}, Ln0/k;->O([B)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput v1, p0, Ln0/a;->m:I

    iput-object p1, p0, Ln0/k;->Q:[B

    const/4 p1, 0x1

    iput-boolean p1, p0, Ln0/k;->S:Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ln0/k;->K([B)I

    move-result v0

    iput v0, p0, Ln0/a;->m:I

    invoke-static {p1}, Ln0/k;->L([B)I

    move-result v0

    array-length v2, p1

    sub-int/2addr v2, v0

    new-array v3, v2, [B

    iput-object v3, p0, Ln0/k;->Q:[B

    invoke-static {p1, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method public I()V
    .locals 2

    iget-object v0, p0, Ln0/k;->R:Lcom/samsung/android/app/notes/sync/network/networkutils/g;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/app/notes/sync/network/networkutils/g;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Ln0/k;->R:Lcom/samsung/android/app/notes/sync/network/networkutils/g;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WCon_ObjectStroke"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public IsSame(Ljava/lang/Object;)Z
    .locals 11
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ln0/k;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ln0/k;

    iget v1, p0, Ln0/a;->a:I

    iget v3, p1, Ln0/a;->a:I

    const-string v4, "]"

    const-string v5, " - "

    const-string v6, "WCon_ObjectStroke"

    if-eq v1, v3, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " !! equals() - NE - type["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Ln0/a;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Ln0/a;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lq0/b;->a:Z

    if-eqz v1, :cond_2

    const-string v1, " !! temporary keep going"

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    iget-object v1, p0, Ln0/a;->G:Lo0/t;

    iget-object v3, p1, Ln0/a;->G:Lo0/t;

    invoke-static {v1, v3}, Lq0/b;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - uuid["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ln0/a;->G:Lo0/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Ln0/a;->G:Lo0/t;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    iget-wide v7, p0, Ln0/a;->I:J

    iget-wide v9, p1, Ln0/a;->I:J

    cmp-long v1, v7, v9

    if-eqz v1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !! equals() - NE - modifiedTime["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Ln0/a;->I:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p1, Ln0/a;->I:J

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    iget-object v1, p0, Ln0/k;->Q:[B

    iget-object p1, p1, Ln0/k;->Q:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, " !! equals() - NE - mStrokeData"

    goto :goto_2

    :cond_6
    return v0
.end method

.method public M()Lcom/samsung/android/app/notes/sync/network/networkutils/g;
    .locals 2

    invoke-virtual {p0}, Ln0/k;->I()V

    new-instance v0, Lcom/samsung/android/app/notes/sync/network/networkutils/g;

    iget-object v1, p0, Ln0/k;->Q:[B

    invoke-direct {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/g;-><init>([B)V

    iput-object v0, p0, Ln0/k;->R:Lcom/samsung/android/app/notes/sync/network/networkutils/g;

    return-object v0
.end method

.method public N()[B
    .locals 6

    iget-boolean v0, p0, Ln0/k;->S:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ln0/k;->Q:[B

    return-object v0

    :cond_0
    iget-object v0, p0, Ln0/k;->Q:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v0, v0

    sget v2, Ln0/k;->Z:I

    add-int v3, v2, v0

    new-array v3, v3, [B

    sget-object v4, Ln0/k;->V:[B

    const/4 v5, 0x0

    invoke-static {v4, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Ln0/k;->Q:[B

    sget v4, Ln0/k;->Z:I

    invoke-static {v2, v5, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Ln0/k;->Q:[B

    return-object v3

    :cond_1
    const-string v0, "WCon_ObjectStroke"

    const-string v2, "strokeData is null"

    invoke-static {v0, v2}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public P(Lq0/a;III)I
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "stroke"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ".stroke"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Ln0/a;->P:Lk0/a;

    invoke-virtual {v0}, Lk0/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {v0, p4}, Lq0/b;->F(Ljava/io/RandomAccessFile;I)V

    invoke-virtual {p1}, Lq0/a;->E()[B

    move-result-object p1

    invoke-static {v0, p1, p4}, Lq0/b;->B(Ljava/io/RandomAccessFile;[BI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 p1, 0x4

    :try_start_2
    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p0, v0}, Ln0/k;->D(Ljava/io/RandomAccessFile;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Ln0/k;->S:Z

    iget-object p1, p0, Ln0/a;->O:Lk0/b;

    iget-object p1, p1, Lk0/b;->c:Lk0/c;

    invoke-virtual {p1, p0}, Lk0/c;->a(Ln0/k;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return p4

    :catchall_0
    move-exception p1

    move-object p3, v0

    goto :goto_0

    :catch_0
    :try_start_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "newApplyBinaryForOldStroke - fail to write temp stroke data."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->close()V

    :cond_0
    throw p1
.end method

.method public b(Le1/o;)V
    .locals 0

    invoke-virtual {p0, p1}, Ln0/k;->f(Le1/o;)V

    invoke-virtual {p0, p1}, Ln0/k;->g(Le1/o;)V

    return-void
.end method

.method public f(Le1/o;)V
    .locals 3

    iget v0, p0, Ln0/a;->a:I

    invoke-static {v0}, Ln0/a;->i(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1, v0}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Ln0/a;->G:Lo0/t;

    invoke-virtual {v0}, Lo0/t;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ln0/a;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hash"

    invoke-virtual {p1, v1, v0}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Ln0/a;->I:J

    const-string v2, "modifiedTime"

    invoke-virtual {p1, v2, v0, v1}, Le1/o;->c(Ljava/lang/String;J)V

    return-void
.end method

.method public g(Le1/o;)V
    .locals 2

    invoke-virtual {p0}, Ln0/a;->t()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ln0/k;->Q:[B

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ln0/k;->N()[B

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/base/common/util/Base64Utils;->encodeBase64([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "strokeBinary"

    invoke-virtual {p1, v1, v0}, Le1/o;->k(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "composeElement - mStrokeData is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k()I
    .locals 1

    iget-boolean v0, p0, Ln0/k;->S:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public v(Lq0/a;II)I
    .locals 2

    invoke-super {p0, p1, p2, p3}, Ln0/a;->v(Lq0/a;II)I

    move-result p3

    if-gez p3, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ObjectBase newApplyBinary() fail. err = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WCon_ObjectStroke"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    :cond_0
    add-int v0, p2, p3

    invoke-virtual {p1, v0}, Lq0/a;->e(I)I

    move-result v0

    add-int/2addr p3, v0

    const/high16 v0, 0x200000

    if-gt p3, v0, :cond_1

    invoke-virtual {p1}, Lq0/a;->E()[B

    move-result-object p1

    add-int v0, p2, p3

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iput-object p1, p0, Ln0/k;->Q:[B

    iget-object p1, p0, Ln0/a;->O:Lk0/b;

    iget-object p1, p1, Lk0/b;->c:Lk0/c;

    invoke-virtual {p1, p0}, Lk0/c;->a(Ln0/k;)V

    return p3

    :cond_1
    new-instance p1, Ls0/c;

    const/16 p2, 0x153

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid binary size ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public w(Lq0/a;I)I
    .locals 1

    iget-object v0, p0, Ln0/k;->Q:[B

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, v0}, Lq0/a;->x(I[B)V

    const/16 p1, 0xfa0

    return p1

    :cond_0
    new-instance p1, Ls0/c;

    const/16 p2, 0x147

    const-string v0, "ObjectStroke.getBinary() - stroke data is empty"

    invoke-direct {p1, p2, v0}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public x()I
    .locals 3

    iget-object v0, p0, Ln0/k;->Q:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    return v0

    :cond_0
    new-instance v0, Ls0/c;

    const/16 v1, 0x147

    const-string v2, "ObjectStroke.getBinarySize() - stroke data is empty"

    invoke-direct {v0, v1, v2}, Ls0/c;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public y(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 2

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "strokeDataHash"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/Base64Utils;->decodeBase64ToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Ln0/k;->Q:[B

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Ln0/a;->y(Lorg/xmlpull/v1/XmlPullParser;I)V

    :goto_0
    return-void
.end method

.method public z(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "strokeBinary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lq0/d;->k(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/Base64Utils;->decodeBase64ToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Ln0/k;->Q:[B

    return-void

    :cond_0
    invoke-static {p1}, Lq0/d;->p(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/support/senl/nt/base/common/util/Base64Utils;->decodeBase64ToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ln0/k;->G([B)V

    :cond_1
    return-void
.end method
