.class final Lorg/apache/poi/java/awt/Cursor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/java/awt/Cursor;->getSystemCustomCursor(Ljava/lang/String;)Lorg/apache/poi/java/awt/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$fileName:Ljava/lang/String;

.field public final synthetic val$flocalized:Ljava/lang/String;

.field public final synthetic val$fx:I

.field public final synthetic val$fy:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/Cursor$2;->val$fileName:Ljava/lang/String;

    iput p2, p0, Lorg/apache/poi/java/awt/Cursor$2;->val$fx:I

    iput p3, p0, Lorg/apache/poi/java/awt/Cursor$2;->val$fy:I

    iput-object p4, p0, Lorg/apache/poi/java/awt/Cursor$2;->val$flocalized:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lorg/apache/poi/java/awt/Toolkit;->getDefaultToolkit()Lorg/apache/poi/java/awt/Toolkit;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/apache/poi/java/awt/Cursor;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/java/awt/Cursor$2;->val$fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/Toolkit;->getImage(Ljava/lang/String;)Lorg/apache/poi/java/awt/Image;

    move-result-object v1

    new-instance v2, Lorg/apache/poi/java/awt/Point;

    iget v3, p0, Lorg/apache/poi/java/awt/Cursor$2;->val$fx:I

    iget v4, p0, Lorg/apache/poi/java/awt/Cursor$2;->val$fy:I

    invoke-direct {v2, v3, v4}, Lorg/apache/poi/java/awt/Point;-><init>(II)V

    iget-object v3, p0, Lorg/apache/poi/java/awt/Cursor$2;->val$flocalized:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lorg/apache/poi/java/awt/Toolkit;->createCustomCursor(Lorg/apache/poi/java/awt/Image;Lorg/apache/poi/java/awt/Point;Ljava/lang/String;)Lorg/apache/poi/java/awt/Cursor;

    move-result-object v0

    return-object v0
.end method
