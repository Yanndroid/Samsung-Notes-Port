.class public Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent$AccessibleAWTFocusHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/java/awt/event/FocusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibleAWTFocusHandler"
.end annotation


# instance fields
.field public final synthetic this$1:Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent$AccessibleAWTFocusHandler;->this$1:Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public focusGained(Lorg/apache/poi/java/awt/event/FocusEvent;)V
    .locals 3

    iget-object p1, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent$AccessibleAWTFocusHandler;->this$1:Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;

    iget-object p1, p1, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    iget-object p1, p1, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    sget-object v1, Ljavax/accessibility/AccessibleState;->FOCUSED:Ljavax/accessibility/AccessibleState;

    const-string v2, "AccessibleState"

    invoke-virtual {p1, v2, v0, v1}, Ljavax/accessibility/AccessibleContext;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public focusLost(Lorg/apache/poi/java/awt/event/FocusEvent;)V
    .locals 3

    iget-object p1, p0, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent$AccessibleAWTFocusHandler;->this$1:Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;

    iget-object p1, p1, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;->this$0:Lorg/apache/poi/java/awt/Component;

    iget-object p1, p1, Lorg/apache/poi/java/awt/Component;->accessibleContext:Ljavax/accessibility/AccessibleContext;

    if-eqz p1, :cond_0

    sget-object v0, Ljavax/accessibility/AccessibleState;->FOCUSED:Ljavax/accessibility/AccessibleState;

    const/4 v1, 0x0

    const-string v2, "AccessibleState"

    invoke-virtual {p1, v2, v0, v1}, Ljavax/accessibility/AccessibleContext;->firePropertyChange(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
