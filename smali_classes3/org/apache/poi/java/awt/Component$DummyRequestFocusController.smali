.class Lorg/apache/poi/java/awt/Component$DummyRequestFocusController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sun/awt/RequestFocusController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/Component;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DummyRequestFocusController"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/java/awt/Component$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Component$DummyRequestFocusController;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptRequestFocus(Lorg/apache/poi/java/awt/Component;Lorg/apache/poi/java/awt/Component;ZZLorg/apache/poi/sun/awt/CausedFocusEvent$Cause;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
