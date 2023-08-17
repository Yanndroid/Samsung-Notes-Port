.class Lorg/apache/poi/java/awt/Container$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/java/awt/Container;->getMousePosition(Z)Lorg/apache/poi/java/awt/Point;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/Container;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/Container;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Container$2;->this$0:Lorg/apache/poi/java/awt/Container;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lorg/apache/poi/java/awt/MouseInfo;->getPointerInfo()Lorg/apache/poi/java/awt/PointerInfo;

    move-result-object v0

    return-object v0
.end method
