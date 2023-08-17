.class public Lorg/apache/poi/java/awt/Canvas$AccessibleAWTCanvas;
.super Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibleAWTCanvas"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x57c904a5e09e20cbL


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/Canvas;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/Canvas;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Canvas$AccessibleAWTCanvas;->this$0:Lorg/apache/poi/java/awt/Canvas;

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/Component$AccessibleAWTComponent;-><init>(Lorg/apache/poi/java/awt/Component;)V

    return-void
.end method


# virtual methods
.method public getAccessibleRole()Ljavax/accessibility/AccessibleRole;
    .locals 1

    sget-object v0, Ljavax/accessibility/AccessibleRole;->CANVAS:Ljavax/accessibility/AccessibleRole;

    return-object v0
.end method
