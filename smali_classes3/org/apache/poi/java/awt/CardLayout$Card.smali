.class Lorg/apache/poi/java/awt/CardLayout$Card;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/CardLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Card"
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x5c2731b0bb6bd6aeL


# instance fields
.field public comp:Lorg/apache/poi/java/awt/Component;

.field public name:Ljava/lang/String;

.field public final synthetic this$0:Lorg/apache/poi/java/awt/CardLayout;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/CardLayout;Ljava/lang/String;Lorg/apache/poi/java/awt/Component;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/CardLayout$Card;->this$0:Lorg/apache/poi/java/awt/CardLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/poi/java/awt/CardLayout$Card;->name:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/poi/java/awt/CardLayout$Card;->comp:Lorg/apache/poi/java/awt/Component;

    return-void
.end method
