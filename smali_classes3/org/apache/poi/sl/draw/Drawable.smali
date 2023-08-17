.class public interface abstract Lorg/apache/poi/sl/draw/Drawable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/sl/draw/Drawable$DrawableHint;
    }
.end annotation


# static fields
.field public static final CURRENT_SLIDE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

.field public static final DRAW_FACTORY:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

.field public static final FONT_FALLBACK:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

.field public static final FONT_HANDLER:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

.field public static final FONT_MAP:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

.field public static final GRADIENT_SHAPE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

.field public static final GRESTORE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

.field public static final GROUP_TRANSFORM:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;
    .annotation runtime Lorg/apache/poi/util/Internal;
    .end annotation
.end field

.field public static final GSAVE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

.field public static final IMAGE_RENDERER:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

.field public static final PRESET_GEOMETRY_CACHE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

.field public static final TEXT_AS_CHARACTERS:I = 0x1

.field public static final TEXT_AS_SHAPES:I = 0x2

.field public static final TEXT_RENDERING_MODE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/apache/poi/sl/draw/Drawable$DrawableHint;-><init>(I)V

    sput-object v0, Lorg/apache/poi/sl/draw/Drawable;->DRAW_FACTORY:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    new-instance v0, Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/poi/sl/draw/Drawable$DrawableHint;-><init>(I)V

    sput-object v0, Lorg/apache/poi/sl/draw/Drawable;->GROUP_TRANSFORM:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    new-instance v0, Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/apache/poi/sl/draw/Drawable$DrawableHint;-><init>(I)V

    sput-object v0, Lorg/apache/poi/sl/draw/Drawable;->IMAGE_RENDERER:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    new-instance v0, Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/apache/poi/sl/draw/Drawable$DrawableHint;-><init>(I)V

    sput-object v0, Lorg/apache/poi/sl/draw/Drawable;->TEXT_RENDERING_MODE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    new-instance v0, Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lorg/apache/poi/sl/draw/Drawable$DrawableHint;-><init>(I)V

    sput-object v0, Lorg/apache/poi/sl/draw/Drawable;->GRADIENT_SHAPE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    new-instance v0, Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/apache/poi/sl/draw/Drawable$DrawableHint;-><init>(I)V

    sput-object v0, Lorg/apache/poi/sl/draw/Drawable;->PRESET_GEOMETRY_CACHE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    new-instance v0, Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/apache/poi/sl/draw/Drawable$DrawableHint;-><init>(I)V

    sput-object v0, Lorg/apache/poi/sl/draw/Drawable;->FONT_HANDLER:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    new-instance v0, Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/apache/poi/sl/draw/Drawable$DrawableHint;-><init>(I)V

    sput-object v0, Lorg/apache/poi/sl/draw/Drawable;->FONT_FALLBACK:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    new-instance v0, Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/apache/poi/sl/draw/Drawable$DrawableHint;-><init>(I)V

    sput-object v0, Lorg/apache/poi/sl/draw/Drawable;->FONT_MAP:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    new-instance v0, Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lorg/apache/poi/sl/draw/Drawable$DrawableHint;-><init>(I)V

    sput-object v0, Lorg/apache/poi/sl/draw/Drawable;->GSAVE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    new-instance v0, Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lorg/apache/poi/sl/draw/Drawable$DrawableHint;-><init>(I)V

    sput-object v0, Lorg/apache/poi/sl/draw/Drawable;->GRESTORE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    new-instance v0, Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Lorg/apache/poi/sl/draw/Drawable$DrawableHint;-><init>(I)V

    sput-object v0, Lorg/apache/poi/sl/draw/Drawable;->CURRENT_SLIDE:Lorg/apache/poi/sl/draw/Drawable$DrawableHint;

    return-void
.end method


# virtual methods
.method public abstract applyTransform(Lorg/apache/poi/java/awt/Graphics2D;)V
.end method

.method public abstract draw(Lorg/apache/poi/java/awt/Graphics2D;)V
.end method

.method public abstract drawContent(Lorg/apache/poi/java/awt/Graphics2D;)V
.end method
