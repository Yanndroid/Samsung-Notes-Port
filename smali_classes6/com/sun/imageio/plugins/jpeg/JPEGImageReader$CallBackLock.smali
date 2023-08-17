.class Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/imageio/plugins/jpeg/JPEGImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallBackLock"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;
    }
.end annotation


# instance fields
.field private lockState:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;->Unlocked:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->lockState:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;

    return-void
.end method

.method public static synthetic access$000(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->lock()V

    return-void
.end method

.method public static synthetic access$100(Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;)V
    .locals 0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->unlock()V

    return-void
.end method

.method private lock()V
    .locals 1

    sget-object v0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;->Locked:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->lockState:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;

    return-void
.end method

.method private unlock()V
    .locals 1

    sget-object v0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;->Unlocked:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;

    iput-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->lockState:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;

    return-void
.end method


# virtual methods
.method public check()V
    .locals 2

    iget-object v0, p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;->lockState:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;

    sget-object v1, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;->Unlocked:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Access to the reader is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
