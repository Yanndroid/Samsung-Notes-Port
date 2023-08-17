.class public Lorg/apache/poi/java/awt/TextArea$AccessibleAWTTextArea;
.super Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/TextArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibleAWTTextArea"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3031f68179afd823L


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/TextArea;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/TextArea;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/TextArea$AccessibleAWTTextArea;->this$0:Lorg/apache/poi/java/awt/TextArea;

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;-><init>(Lorg/apache/poi/java/awt/TextComponent;)V

    return-void
.end method


# virtual methods
.method public getAccessibleStateSet()Ljavax/accessibility/AccessibleStateSet;
    .locals 2

    invoke-super {p0}, Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;->getAccessibleStateSet()Ljavax/accessibility/AccessibleStateSet;

    move-result-object v0

    sget-object v1, Ljavax/accessibility/AccessibleState;->MULTI_LINE:Ljavax/accessibility/AccessibleState;

    invoke-virtual {v0, v1}, Ljavax/accessibility/AccessibleStateSet;->add(Ljavax/accessibility/AccessibleState;)Z

    return-object v0
.end method
