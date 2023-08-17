.class final Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/KeyboardFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LightweightFocusRequest"
.end annotation


# instance fields
.field public final cause:Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;

.field public final component:Lorg/apache/poi/java/awt/Component;

.field public final temporary:Z


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/Component;ZLorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;->component:Lorg/apache/poi/java/awt/Component;

    iput-boolean p2, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;->temporary:Z

    iput-object p3, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;->cause:Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LightweightFocusRequest[component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;->component:Lorg/apache/poi/java/awt/Component;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",temporary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;->temporary:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/java/awt/KeyboardFocusManager$LightweightFocusRequest;->cause:Lorg/apache/poi/sun/awt/CausedFocusEvent$Cause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
