.class public Lcom/samsung/android/app/notes/sync/network/networkutils/m;
.super Lorg/apache/http/entity/mime/content/InputStreamBody;
.source "SourceFile"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/http/entity/ContentType;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/http/entity/mime/content/InputStreamBody;-><init>(Ljava/io/InputStream;Lorg/apache/http/entity/ContentType;Ljava/lang/String;)V

    iput p4, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/m;->a:I

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/notes/sync/network/networkutils/n;

    iget v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/m;->a:I

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/n;-><init>(Ljava/io/OutputStream;I)V

    invoke-super {p0, v0}, Lorg/apache/http/entity/mime/content/InputStreamBody;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
