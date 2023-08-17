.class Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sl/usermodel/PaintStyle$SolidPaint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sl/draw/DrawPaint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleSolidPaint"
.end annotation


# instance fields
.field private final solidColor:Lorg/apache/poi/sl/usermodel/ColorStyle;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/Color;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Color needs to be specified"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint$1;-><init>(Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;Lorg/apache/poi/java/awt/Color;)V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;->solidColor:Lorg/apache/poi/sl/usermodel/ColorStyle;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/sl/usermodel/ColorStyle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Color needs to be specified"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;->solidColor:Lorg/apache/poi/sl/usermodel/ColorStyle;

    return-void
.end method


# virtual methods
.method public getSolidColor()Lorg/apache/poi/sl/usermodel/ColorStyle;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawPaint$SimpleSolidPaint;->solidColor:Lorg/apache/poi/sl/usermodel/ColorStyle;

    return-object v0
.end method
