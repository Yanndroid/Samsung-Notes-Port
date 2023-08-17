.class final enum Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;

.field public static final enum Locked:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;

.field public static final enum Unlocked:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;

    const-string v1, "Unlocked"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;->Unlocked:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;

    new-instance v1, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;

    const-string v3, "Locked"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;->Locked:Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;->$VALUES:[Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;
    .locals 1

    const-class v0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;

    return-object p0
.end method

.method public static values()[Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;
    .locals 1

    sget-object v0, Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;->$VALUES:[Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;

    invoke-virtual {v0}, [Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/imageio/plugins/jpeg/JPEGImageReader$CallBackLock$State;

    return-object v0
.end method
