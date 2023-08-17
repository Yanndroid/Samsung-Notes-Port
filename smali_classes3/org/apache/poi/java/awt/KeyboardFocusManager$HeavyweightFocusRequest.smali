.class final Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/KeyboardFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HeavyweightFocusRequest"
.end annotation


# static fields
.field public static final CLEAR_GLOBAL_FOCUS_OWNER:Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;


# instance fields
.field public final heavyweight:Lorg/apache/poi/java/awt/Component;

.field public final lightweightRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;

    invoke-direct {v0}, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;-><init>()V

    sput-object v0, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;->CLEAR_GLOBAL_FOCUS_OWNER:Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;->heavyweight:Lorg/apache/poi/java/awt/Component;

    iput-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;->lightweightRequests:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Component;ZLorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->access$100()Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->access$100()Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    const-string v1, "Assertion (heavyweight != null) failed"

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;->heavyweight:Lorg/apache/poi/java/awt/Component;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;->lightweightRequests:Ljava/util/LinkedList;

    invoke-virtual {p0, p2, p3, p4}, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;->addLightweightRequest(Lorg/apache/poi/java/awt/Component;ZLorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)Z

    return-void
.end method


# virtual methods
.method public addLightweightRequest(Lorg/apache/poi/java/awt/Component;ZLorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)Z
    .locals 2

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->access$100()Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;->CLEAR_GLOBAL_FOCUS_OWNER:Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;

    if-ne p0, v0, :cond_0

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->access$100()Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    const-string v1, "Assertion (this != HeavyweightFocusRequest.CLEAR_GLOBAL_FOCUS_OWNER) failed"

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Lorg/apache/poi/java/awt/KeyboardFocusManager;->access$100()Lorg/apache/poi/sun/util/logging/PlatformLogger;

    move-result-object v0

    const-string v1, "Assertion (descendant != null) failed"

    invoke-virtual {v0, v1}, Lorg/apache/poi/sun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;->lightweightRequests:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;->lightweightRequests:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;

    iget-object v0, v0, Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;->component:Lorg/apache/poi/java/awt/Component;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;->lightweightRequests:Ljava/util/LinkedList;

    new-instance v1, Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;

    invoke-direct {v1, p1, p2, p3}, Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;-><init>(Lorg/apache/poi/java/awt/Component;ZLorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public getFirstLightweightRequest()Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;
    .locals 1

    sget-object v0, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;->CLEAR_GLOBAL_FOCUS_OWNER:Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;->lightweightRequests:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HeavyweightFocusRequest[heavweight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;->heavyweight:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",lightweightRequests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;->lightweightRequests:Ljava/util/LinkedList;

    const-string v2, "]"

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager$HeavyweightFocusRequest;->lightweightRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
