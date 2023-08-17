.class final Lorg/apache/poi/java/awt/Cursor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sun/awt/AWTAccessor$CursorAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/java/awt/Cursor;
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
.method public getPData(Lorg/apache/poi/java/awt/Cursor;)J
    .locals 2

    invoke-static {p1}, Lorg/apache/poi/java/awt/Cursor;->access$000(Lorg/apache/poi/java/awt/Cursor;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getType(Lorg/apache/poi/java/awt/Cursor;)I
    .locals 0

    iget p1, p1, Lorg/apache/poi/java/awt/Cursor;->type:I

    return p1
.end method

.method public setPData(Lorg/apache/poi/java/awt/Cursor;J)V
    .locals 0

    invoke-static {p1, p2, p3}, Lorg/apache/poi/java/awt/Cursor;->access$002(Lorg/apache/poi/java/awt/Cursor;J)J

    return-void
.end method
