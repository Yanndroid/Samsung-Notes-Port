.class public final Lorg/apache/poi/java/awt/ComponentOrientation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final HORIZ_BIT:I = 0x2

.field public static final LEFT_TO_RIGHT:Lorg/apache/poi/java/awt/ComponentOrientation;

.field private static final LTR_BIT:I = 0x4

.field public static final RIGHT_TO_LEFT:Lorg/apache/poi/java/awt/ComponentOrientation;

.field public static final UNKNOWN:Lorg/apache/poi/java/awt/ComponentOrientation;

.field private static final UNK_BIT:I = 0x1

.field private static final serialVersionUID:J = -0x391558ba5e639c34L


# instance fields
.field private orientation:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/poi/java/awt/ComponentOrientation;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/ComponentOrientation;-><init>(I)V

    sput-object v0, Lorg/apache/poi/java/awt/ComponentOrientation;->LEFT_TO_RIGHT:Lorg/apache/poi/java/awt/ComponentOrientation;

    new-instance v0, Lorg/apache/poi/java/awt/ComponentOrientation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/ComponentOrientation;-><init>(I)V

    sput-object v0, Lorg/apache/poi/java/awt/ComponentOrientation;->RIGHT_TO_LEFT:Lorg/apache/poi/java/awt/ComponentOrientation;

    new-instance v0, Lorg/apache/poi/java/awt/ComponentOrientation;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/apache/poi/java/awt/ComponentOrientation;-><init>(I)V

    sput-object v0, Lorg/apache/poi/java/awt/ComponentOrientation;->UNKNOWN:Lorg/apache/poi/java/awt/ComponentOrientation;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/poi/java/awt/ComponentOrientation;->orientation:I

    return-void
.end method

.method public static getOrientation(Ljava/util/Locale;)Lorg/apache/poi/java/awt/ComponentOrientation;
    .locals 1

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "iw"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ar"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "fa"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "ur"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/apache/poi/java/awt/ComponentOrientation;->LEFT_TO_RIGHT:Lorg/apache/poi/java/awt/ComponentOrientation;

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Lorg/apache/poi/java/awt/ComponentOrientation;->RIGHT_TO_LEFT:Lorg/apache/poi/java/awt/ComponentOrientation;

    return-object p0
.end method

.method public static getOrientation(Ljava/util/ResourceBundle;)Lorg/apache/poi/java/awt/ComponentOrientation;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    const-string v0, "Orientation"

    invoke-virtual {p0, v0}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/java/awt/ComponentOrientation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/ResourceBundle;->getLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/java/awt/ComponentOrientation;->getOrientation(Ljava/util/Locale;)Lorg/apache/poi/java/awt/ComponentOrientation;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/poi/java/awt/ComponentOrientation;->getOrientation(Ljava/util/Locale;)Lorg/apache/poi/java/awt/ComponentOrientation;

    move-result-object v0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public isHorizontal()Z
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/ComponentOrientation;->orientation:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLeftToRight()Z
    .locals 1

    iget v0, p0, Lorg/apache/poi/java/awt/ComponentOrientation;->orientation:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
