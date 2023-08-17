.class final Lorg/apache/poi/java/awt/PopupMenu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sun/awt/AWTAccessor$PopupMenuAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/PopupMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isTrayIconPopup(Lorg/apache/poi/java/awt/PopupMenu;)Z
    .locals 0

    iget-boolean p1, p1, Lorg/apache/poi/java/awt/PopupMenu;->isTrayIconPopup:Z

    return p1
.end method
