.class public Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/document/SpenNoteDoc$AuthorInfo;
    }
.end annotation


# static fields
.field public static final MODE_READ_ONLY:I = 0x0

.field public static final MODE_WRITABLE:I = 0x1

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x0

.field private static sIsFeatureChecked:Z = false

.field private static sIsLogEnabled:Z = false

.field private static sSdkVersionCode:I

.field private static sWeakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandle:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sWeakContext:Ljava/lang/ref/WeakReference;

    sget v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/Spen;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/Spen;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/Spen;->getVersionCode()I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Model_SpenNoteDoc"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x1

    const-string v3, "SpenNoteDoc()"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->insertLog(Ljava/lang/String;Ljava/lang/String;I)V

    if-le p2, p3, :cond_1

    iget v5, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move-object v4, p0

    move v8, p2

    move v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_init(ILjava/lang/String;III)I

    move-result p2

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v2, p0

    move v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_init(ILjava/lang/String;III)I

    move-result p2

    :goto_0
    if-nez p2, :cond_6

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p2

    const/16 p3, 0xb

    if-eq p2, p3, :cond_3

    const/16 p1, 0x13

    if-eq p2, p1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_2

    :cond_2
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SpenNoteDoc("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ") is already closed."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    const-string p3, "] is not exist"

    const-string v0, "["

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/SPenSDK30"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_5

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_6
    :goto_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sWeakContext:Ljava/lang/ref/WeakReference;

    sget v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/Spen;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/Spen;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/Spen;->getVersionCode()I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Model_SpenNoteDoc"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "SpenNoteDoc()"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->insertLog(Ljava/lang/String;Ljava/lang/String;I)V

    iget v4, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    move-object v3, p0

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_init(ILjava/lang/String;III)I

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    const/16 p2, 0xb

    if-eq p1, p2, :cond_2

    const/16 p2, 0x13

    if-eq p1, p2, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SpenNoteDoc("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ") is already closed."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/io/InputStream;II)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sWeakContext:Ljava/lang/ref/WeakReference;

    sget v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/Spen;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/Spen;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/Spen;->getVersionCode()I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Model_SpenNoteDoc"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x3

    const-string v2, "SpenNoteDoc()"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->insertLog(Ljava/lang/String;Ljava/lang/String;I)V

    instance-of v0, p2, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object v4, p2

    check-cast v4, Ljava/io/ByteArrayInputStream;

    move-object v1, p0

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_init(ILjava/lang/String;Ljava/io/ByteArrayInputStream;II)I

    move-result p1

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/io/FileInputStream;

    if-eqz v0, :cond_7

    iget v2, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    check-cast p2, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object v1, p0

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_init(ILjava/lang/String;Ljava/io/FileDescriptor;II)I

    move-result p1

    :goto_0
    if-nez p1, :cond_6

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    const/16 p2, 0xb

    if-eq p1, p2, :cond_5

    const/16 p2, 0xd

    if-eq p1, p2, :cond_4

    const/16 p2, 0x11

    if-eq p1, p2, :cond_3

    const/16 p2, 0x13

    if-eq p1, p2, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SpenNoteDoc("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ") is already closed."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;

    const-string p2, "E_INVALID_PASSWORD : the password is wrong"

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    const-string p2, "It does not correspond to the NoteDoc file format"

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_6
    :goto_1
    return-void

    :cond_7
    const/4 p1, 0x7

    const-string p2, "The parameter \'stream\' is unsupported type. This method supports only ByteArrayInputStream and FileInputStream"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;DI)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sWeakContext:Ljava/lang/ref/WeakReference;

    sget v1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/pen/Spen;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pen/Spen;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/Spen;->getVersionCode()I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Model_SpenNoteDoc"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x5

    const-string v3, "SpenNoteDoc()"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->insertLog(Ljava/lang/String;Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p2

    move-wide v5, p3

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_init(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    const/16 v1, 0x11

    if-eq v0, v1, :cond_2

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenNoteDoc("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") is already closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;

    const-string v1, "E_INVALID_PASSWORD : the password is wrong"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    const-string v1, "E_UNSUPPORTED_TYPE : It does not correspond to the NoteDoc file format"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_5
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sWeakContext:Ljava/lang/ref/WeakReference;

    sget v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/Spen;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/Spen;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/Spen;->getVersionCode()I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Model_SpenNoteDoc"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x4

    const-string v2, "SpenNoteDoc()"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->insertLog(Ljava/lang/String;Ljava/lang/String;I)V

    iget v4, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move-object v6, p2

    move v8, p3

    move v9, p4

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_init(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)I

    move-result p1

    if-nez p1, :cond_5

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    const/16 p2, 0xb

    if-eq p1, p2, :cond_4

    const/16 p2, 0xd

    if-eq p1, p2, :cond_3

    const/16 p2, 0x11

    if-eq p1, p2, :cond_2

    const/16 p2, 0x13

    if-eq p1, p2, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SpenNoteDoc("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ") is already closed."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;

    const-string p2, "E_INVALID_PASSWORD : the password is wrong"

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    const-string p2, "E_UNSUPPORTED_TYPE : It does not correspond to the NoteDoc file format"

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_5
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIZ)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sWeakContext:Ljava/lang/ref/WeakReference;

    sget v1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/pen/Spen;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pen/Spen;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/Spen;->getVersionCode()I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Model_SpenNoteDoc"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/16 v2, 0x8

    const-string v3, "SpenNoteDoc()"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->insertLog(Ljava/lang/String;Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_init(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    const/16 v1, 0x11

    if-eq v0, v1, :cond_2

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenNoteDoc("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") is already closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;

    const-string v1, "E_INVALID_PASSWORD : the password is wrong"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    const-string v1, "E_UNSUPPORTED_TYPE : It does not correspond to the NoteDoc file format"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_5
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;DI)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sWeakContext:Ljava/lang/ref/WeakReference;

    sget v1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/pen/Spen;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pen/Spen;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/Spen;->getVersionCode()I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Model_SpenNoteDoc"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x7

    const-string v3, "SpenNoteDoc()"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->insertLog(Ljava/lang/String;Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_init(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    const/16 v1, 0x11

    if-eq v0, v1, :cond_2

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenNoteDoc("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") is already closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;

    const-string v1, "E_INVALID_PASSWORD : the password is wrong"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    const-string v1, "E_UNSUPPORTED_TYPE : It does not correspond to the NoteDoc file format"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_5
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sWeakContext:Ljava/lang/ref/WeakReference;

    sget v1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/pen/Spen;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pen/Spen;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/Spen;->getVersionCode()I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Model_SpenNoteDoc"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x6

    const-string v3, "SpenNoteDoc()"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->insertLog(Ljava/lang/String;Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_init(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    const/16 v1, 0x11

    if-eq v0, v1, :cond_2

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenNoteDoc("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") is already closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;

    const-string v1, "E_INVALID_PASSWORD : the password is wrong"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    const-string v1, "E_UNSUPPORTED_TYPE : It does not correspond to the NoteDoc file format"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_5
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sWeakContext:Ljava/lang/ref/WeakReference;

    sget v1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/sdk/pen/Spen;

    invoke-direct {v1}, Lcom/samsung/android/sdk/pen/Spen;-><init>()V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/Spen;->getVersionCode()I

    move-result v1

    sput v1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Model_SpenNoteDoc"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/16 v2, 0x9

    const-string v3, "SpenNoteDoc()"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->insertLog(Ljava/lang/String;Ljava/lang/String;I)V

    iget v1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_init(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd

    if-eq v0, v1, :cond_3

    const/16 v1, 0x11

    if-eq v0, v1, :cond_2

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenNoteDoc("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") is already closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;

    const-string v1, "E_INVALID_PASSWORD : the password is wrong"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    const-string v1, "E_UNSUPPORTED_TYPE : It does not correspond to the NoteDoc file format"

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_5
    :goto_0
    return-void
.end method

.method private native NoteDoc_appendPage(III)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
.end method

.method private native NoteDoc_appendPage(IILjava/lang/String;I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
.end method

.method private native NoteDoc_attachFile(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method private native NoteDoc_attachToFile(ILjava/lang/String;Z)Z
.end method

.method private native NoteDoc_backupObjectList(ILjava/util/ArrayList;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation
.end method

.method private native NoteDoc_backupObjectList(ILjava/util/ArrayList;Ljava/lang/String;FF)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;",
            "Ljava/lang/String;",
            "FF)Z"
        }
    .end annotation
.end method

.method private native NoteDoc_close(IZ)Z
.end method

.method private native NoteDoc_close2(IZZ)Z
.end method

.method private native NoteDoc_copyPage(ILcom/samsung/android/sdk/pen/document/SpenPageDoc;I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
.end method

.method private native NoteDoc_detachFile(ILjava/lang/String;)Z
.end method

.method private native NoteDoc_discard(I)Z
.end method

.method private native NoteDoc_finalize(I)V
.end method

.method private native NoteDoc_getAppMajorVersion(I)I
.end method

.method private native NoteDoc_getAppMinorVersion(I)I
.end method

.method private native NoteDoc_getAppName(I)Ljava/lang/String;
.end method

.method private native NoteDoc_getAppPatchName(I)Ljava/lang/String;
.end method

.method private native NoteDoc_getAttachedFile(ILjava/lang/String;)Ljava/lang/String;
.end method

.method private native NoteDoc_getAttachedFileCount(I)I
.end method

.method private native NoteDoc_getAuthorInfo(I)Lcom/samsung/android/sdk/pen/document/SpenNoteDoc$AuthorInfo;
.end method

.method private native NoteDoc_getCoverImagePath(I)Ljava/lang/String;
.end method

.method private native NoteDoc_getExtraDataByteArray(ILjava/lang/String;)[B
.end method

.method private native NoteDoc_getExtraDataInt(ILjava/lang/String;)I
.end method

.method private native NoteDoc_getExtraDataString(ILjava/lang/String;)Ljava/lang/String;
.end method

.method private native NoteDoc_getExtraDataStringArray(ILjava/lang/String;)[Ljava/lang/String;
.end method

.method private native NoteDoc_getGeoTagLatitude(I)D
.end method

.method private native NoteDoc_getGeoTagLongitude(I)D
.end method

.method private native NoteDoc_getHeight(I)I
.end method

.method private native NoteDoc_getId(I)Ljava/lang/String;
.end method

.method private native NoteDoc_getInternalDirectory(I)Ljava/lang/String;
.end method

.method private native NoteDoc_getLastEditedPageIndex(I)I
.end method

.method private native NoteDoc_getOrientation(I)I
.end method

.method private native NoteDoc_getOrientation2(ILjava/io/ByteArrayInputStream;)I
.end method

.method private native NoteDoc_getOrientation3(ILjava/io/FileDescriptor;)I
.end method

.method private native NoteDoc_getPage(II)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
.end method

.method private native NoteDoc_getPageCount(I)I
.end method

.method private native NoteDoc_getPageIdByIndex(II)Ljava/lang/String;
.end method

.method private native NoteDoc_getPageIndexById(ILjava/lang/String;)I
.end method

.method private native NoteDoc_getRotation(I)I
.end method

.method private native NoteDoc_getWidth(I)I
.end method

.method private native NoteDoc_hasAttachedFile(ILjava/lang/String;)Z
.end method

.method private native NoteDoc_hasExtraDataByteArray(ILjava/lang/String;)Z
.end method

.method private native NoteDoc_hasExtraDataInt(ILjava/lang/String;)Z
.end method

.method private native NoteDoc_hasExtraDataString(ILjava/lang/String;)Z
.end method

.method private native NoteDoc_hasExtraDataStringArray(ILjava/lang/String;)Z
.end method

.method private native NoteDoc_hasTaggedPage(I)Z
.end method

.method private native NoteDoc_init(ILjava/lang/String;III)I
.end method

.method private native NoteDoc_init(ILjava/lang/String;Ljava/io/ByteArrayInputStream;II)I
.end method

.method private native NoteDoc_init(ILjava/lang/String;Ljava/io/ByteArrayInputStream;Ljava/lang/String;II)I
.end method

.method private native NoteDoc_init(ILjava/lang/String;Ljava/io/FileDescriptor;II)I
.end method

.method private native NoteDoc_init(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/lang/String;II)I
.end method

.method private native NoteDoc_init(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)I
.end method

.method private native NoteDoc_init(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)I
.end method

.method private native NoteDoc_insertPage(IIII)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
.end method

.method private native NoteDoc_insertPage(IIILjava/lang/String;I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
.end method

.method private native NoteDoc_isAllPageTextOnly(I)Z
.end method

.method private native NoteDoc_isChanged(I)Z
.end method

.method private native NoteDoc_movePageIndex(ILcom/samsung/android/sdk/pen/document/SpenPageDoc;I)Z
.end method

.method private native NoteDoc_removeExtraDataByteArray(ILjava/lang/String;)Z
.end method

.method private native NoteDoc_removeExtraDataInt(ILjava/lang/String;)Z
.end method

.method private native NoteDoc_removeExtraDataString(ILjava/lang/String;)Z
.end method

.method private native NoteDoc_removeExtraDataStringArray(ILjava/lang/String;)Z
.end method

.method private native NoteDoc_removePage(II)Z
.end method

.method private native NoteDoc_restoreObjectList(ILjava/lang/String;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method private native NoteDoc_save(ILjava/io/ByteArrayOutputStream;Z)Z
.end method

.method private native NoteDoc_save(ILjava/io/FileDescriptor;Z)Z
.end method

.method private native NoteDoc_save(ILjava/lang/String;Z)Z
.end method

.method private native NoteDoc_setAppName(ILjava/lang/String;)Z
.end method

.method private native NoteDoc_setAppVersion(IIILjava/lang/String;)Z
.end method

.method private native NoteDoc_setAuthorInfo(ILcom/samsung/android/sdk/pen/document/SpenNoteDoc$AuthorInfo;)Z
.end method

.method private native NoteDoc_setCoverImage(ILjava/lang/String;)Z
.end method

.method private native NoteDoc_setExtraDataByteArray(ILjava/lang/String;[BI)Z
.end method

.method private native NoteDoc_setExtraDataInt(ILjava/lang/String;I)Z
.end method

.method private native NoteDoc_setExtraDataString(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method private native NoteDoc_setExtraDataStringArray(ILjava/lang/String;[Ljava/lang/String;I)Z
.end method

.method private native NoteDoc_setGeoTag(IDD)Z
.end method

.method private native NoteDoc_transferPage(ILcom/samsung/android/sdk/pen/document/SpenNoteDoc;I)Z
.end method

.method private static insertLog(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    const-string p0, "com.samsung.android.sdk.pen"

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p0, "SpenSdk"

    const-string p1, "Cannot log. lost context"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sIsFeatureChecked:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/samsung/android/spen/libwrapper/FloatingFeatureWrapper;->create(Landroid/content/Context;)Lcom/samsung/android/spen/libwrapper/FloatingFeatureWrapper;

    move-result-object v1

    const-string v3, "TRUE"

    const-string v4, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v1, v4}, Lcom/samsung/android/spen/libwrapper/FloatingFeatureWrapper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sIsLogEnabled:Z

    sput-boolean v2, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sIsFeatureChecked:Z

    :cond_1
    sget-boolean v1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sIsLogEnabled:Z

    if-ne v1, v2, :cond_2

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "app_id"

    invoke-virtual {v1, v2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "feature"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->sSdkVersionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "extra"

    invoke-virtual {v1, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "value"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string p1, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "data"

    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "com.samsung.android.providers.context"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/samsung/android/spen/libwrapper/utils/PlatformException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method private throwUncheckedException(I)V
    .locals 2

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    return-void

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpenNoteDoc("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") is already closed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public appendPage()Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    .locals 4

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_appendPage(IILjava/lang/String;I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public appendPage(II)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_appendPage(III)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public appendPage(ILjava/lang/String;I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_appendPage(IILjava/lang/String;I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public attachFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_attachFile(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public attachToFile(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_attachToFile(ILjava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpenNoteDoc("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") is already closed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public attachToFile(Ljava/lang/String;Z)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_attachToFile(ILjava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    const/16 p2, 0xb

    if-eq p1, p2, :cond_1

    const/16 p2, 0x13

    if-eq p1, p2, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SpenNoteDoc("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") is already closed."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public backupObjectList(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_backupObjectList(ILjava/util/ArrayList;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public backupObjectList(Ljava/util/ArrayList;Ljava/lang/String;FF)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;",
            "Ljava/lang/String;",
            "FF)V"
        }
    .end annotation

    iget v1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_backupObjectList(ILjava/util/ArrayList;Ljava/lang/String;FF)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public close()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_close(IZ)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_2

    const/16 v2, 0x13

    if-eq v0, v2, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenNoteDoc("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") is already closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_3
    :goto_0
    iput v1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    return-void
.end method

.method public close(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->close(ZZ)V

    return-void
.end method

.method public close(ZZ)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_close2(IZZ)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    const/16 p2, 0xb

    if-eq p1, p2, :cond_2

    const/16 p2, 0x13

    if-eq p1, p2, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SpenNoteDoc("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") is already closed."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_3
    :goto_0
    iput v1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    return-void
.end method

.method public copyPage(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_copyPage(ILcom/samsung/android/sdk/pen/document/SpenPageDoc;I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public detachFile(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_detachFile(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public discard()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_discard(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_2

    const/16 v2, 0x13

    if-eq v0, v2, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenNoteDoc("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") is already closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_3
    :goto_0
    iput v1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mContext:Landroid/content/Context;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;

    iget p1, p1, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public finalize()V
    .locals 3

    :try_start_0
    const-string v0, "Model_SpenNoteDoc"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finalize() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_finalize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAppMajorVersion()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getAppMajorVersion(I)I

    move-result v0

    return v0
.end method

.method public getAppMinorVersion()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getAppMinorVersion(I)I

    move-result v0

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getAppName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppPatchName()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getAppPatchName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttachedFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getAttachedFile(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public getAttachedFileCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getAttachedFileCount(I)I

    move-result v0

    return v0
.end method

.method public getAuthorInfo()Lcom/samsung/android/sdk/pen/document/SpenNoteDoc$AuthorInfo;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getAuthorInfo(I)Lcom/samsung/android/sdk/pen/document/SpenNoteDoc$AuthorInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCoverImagePath()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getCoverImagePath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtraDataByteArray(Ljava/lang/String;)[B
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getExtraDataByteArray(ILjava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public getExtraDataInt(Ljava/lang/String;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getExtraDataInt(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getExtraDataString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getExtraDataString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getExtraDataStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getExtraDataStringArray(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getGeoTagLatitude()D
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getGeoTagLatitude(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getGeoTagLongitude()D
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getGeoTagLongitude(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getHeight(I)I

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInternalDirectory()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getInternalDirectory(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastEditedPageIndex()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getLastEditedPageIndex(I)I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getOrientation(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return v0
.end method

.method public getPage(I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getPage(II)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public getPageCount()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getPageCount(I)I

    move-result v0

    return v0
.end method

.method public getPageIdByIndex(I)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getPageIdByIndex(II)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public getPageIndexById(Ljava/lang/String;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getPageIndexById(ILjava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return p1
.end method

.method public getRotation()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getRotation(I)I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_getWidth(I)I

    move-result v0

    return v0
.end method

.method public hasAttachedFile(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_hasAttachedFile(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasExtraDataByteArray(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_hasExtraDataByteArray(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasExtraDataInt(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_hasExtraDataInt(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasExtraDataString(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_hasExtraDataString(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasExtraDataStringArray(Ljava/lang/String;)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_hasExtraDataStringArray(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasTaggedPage()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_hasTaggedPage(I)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    return v0
.end method

.method public insertPage(I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    .locals 6

    iget v1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_insertPage(IIILjava/lang/String;I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public insertPage(III)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_insertPage(IIII)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public insertPage(IILjava/lang/String;I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
    .locals 6

    iget v1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_insertPage(IIILjava/lang/String;I)Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-object p1
.end method

.method public isAllPageTextOnly()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_isAllPageTextOnly(I)Z

    move-result v0

    return v0
.end method

.method public isChanged()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_isChanged(I)Z

    move-result v0

    return v0
.end method

.method public movePageIndex(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_movePageIndex(ILcom/samsung/android/sdk/pen/document/SpenPageDoc;I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeExtraDataByteArray(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_removeExtraDataByteArray(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeExtraDataInt(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_removeExtraDataInt(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeExtraDataString(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_removeExtraDataString(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeExtraDataStringArray(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_removeExtraDataStringArray(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removePage(I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_removePage(II)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public restoreObjectList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_restoreObjectList(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method public save(Ljava/io/OutputStream;)V
    .locals 2

    instance-of v0, p1, Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    check-cast p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_save(ILjava/io/ByteArrayOutputStream;Z)Z

    move-result p1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/io/FileOutputStream;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    check-cast p1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_save(ILjava/io/FileDescriptor;Z)Z

    move-result p1

    :goto_0
    if-nez p1, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    const/16 v0, 0x13

    if-eq p1, v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpenNoteDoc("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") is already closed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 p1, 0x7

    const-string v0, "The parameter \'stream\' is unsupported type. This method supports only ByteArrayOutputStream and FileOutputStream"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    return-void
.end method

.method public save(Ljava/io/OutputStream;Z)V
    .locals 1

    instance-of v0, p1, Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    check-cast p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_save(ILjava/io/ByteArrayOutputStream;Z)Z

    move-result p1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/io/FileOutputStream;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    check-cast p1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_save(ILjava/io/FileDescriptor;Z)Z

    move-result p1

    :goto_0
    if-nez p1, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    const/16 p2, 0xb

    if-eq p1, p2, :cond_2

    const/16 p2, 0x13

    if-eq p1, p2, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SpenNoteDoc("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") is already closed."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return-void

    :cond_4
    const/4 p1, 0x7

    const-string p2, "The parameter \'stream\' is unsupported type. This method supports only ByteArrayOutputStream and FileOutputStream"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(ILjava/lang/String;)V

    return-void
.end method

.method public save(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_save(ILjava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpenNoteDoc("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") is already closed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public save(Ljava/lang/String;Z)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_save(ILjava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    const/16 p2, 0xb

    if-eq p1, p2, :cond_1

    const/16 p2, 0x13

    if-eq p1, p2, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/SpenError;->ThrowUncheckedException(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SpenNoteDoc("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") is already closed."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_setAppName(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setAppVersion(IILjava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_setAppVersion(IIILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setAuthorInfo(Lcom/samsung/android/sdk/pen/document/SpenNoteDoc$AuthorInfo;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_setAuthorInfo(ILcom/samsung/android/sdk/pen/document/SpenNoteDoc$AuthorInfo;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setCoverImage(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_setCoverImage(ILjava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setExtraDataByteArray(Ljava/lang/String;[B)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    if-eqz p2, :cond_0

    array-length v1, p2

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_setExtraDataByteArray(ILjava/lang/String;[BI)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_setExtraDataByteArray(ILjava/lang/String;[BI)Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_1
    return-void
.end method

.method public setExtraDataInt(Ljava/lang/String;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_setExtraDataInt(ILjava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setExtraDataString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_setExtraDataString(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setExtraDataStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    if-eqz p2, :cond_0

    array-length v1, p2

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_setExtraDataStringArray(ILjava/lang/String;[Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_setExtraDataStringArray(ILjava/lang/String;[Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_1
    return-void
.end method

.method public setGeoTag(DD)V
    .locals 6

    iget v1, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_setGeoTag(IDD)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public transferPage(Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->mHandle:I

    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->NoteDoc_transferPage(ILcom/samsung/android/sdk/pen/document/SpenNoteDoc;I)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/SpenError;->getError()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method
