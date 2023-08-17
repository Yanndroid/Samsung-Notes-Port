.class Lorg/apache/poi/java/awt/Font$FontAccessImpl;
.super Lsun/font/FontAccess;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/Font;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FontAccessImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lsun/font/FontAccess;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/java/awt/Font$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/java/awt/Font$FontAccessImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getFont2D(Lorg/apache/poi/java/awt/Font;)Lsun/font/Font2D;
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/java/awt/Font;->access$000(Lorg/apache/poi/java/awt/Font;)Lsun/font/Font2D;

    move-result-object p1

    return-object p1
.end method

.method public isCreatedFont(Lorg/apache/poi/java/awt/Font;)Z
    .locals 0

    invoke-static {p1}, Lorg/apache/poi/java/awt/Font;->access$200(Lorg/apache/poi/java/awt/Font;)Z

    move-result p1

    return p1
.end method

.method public setCreatedFont(Lorg/apache/poi/java/awt/Font;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/apache/poi/java/awt/Font;->access$202(Lorg/apache/poi/java/awt/Font;Z)Z

    return-void
.end method

.method public setFont2D(Lorg/apache/poi/java/awt/Font;Lsun/font/Font2DHandle;)V
    .locals 0

    invoke-static {p1, p2}, Lorg/apache/poi/java/awt/Font;->access$102(Lorg/apache/poi/java/awt/Font;Lsun/font/Font2DHandle;)Lsun/font/Font2DHandle;

    return-void
.end method
