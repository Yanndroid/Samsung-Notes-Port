.class public Lorg/apache/poi/java/awt/TextField$AccessibleAWTTextField;
.super Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/TextField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccessibleAWTTextField"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x564ee908c0073af6L


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/TextField;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/TextField;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/TextField$AccessibleAWTTextField;->this$0:Lorg/apache/poi/java/awt/TextField;

    invoke-direct {p0, p1}, Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;-><init>(Lorg/apache/poi/java/awt/TextComponent;)V

    return-void
.end method


# virtual methods
.method public getAccessibleStateSet()Ljavax/accessibility/AccessibleStateSet;
    .locals 2

    invoke-super {p0}, Lorg/apache/poi/java/awt/TextComponent$AccessibleAWTTextComponent;->getAccessibleStateSet()Ljavax/accessibility/AccessibleStateSet;

    move-result-object v0

    sget-object v1, Ljavax/accessibility/AccessibleState;->SINGLE_LINE:Ljavax/accessibility/AccessibleState;

    invoke-virtual {v0, v1}, Ljavax/accessibility/AccessibleStateSet;->add(Ljavax/accessibility/AccessibleState;)Z

    return-object v0
.end method
