.class public final Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;,
        Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;
    }
.end annotation

.annotation runtime Luk/ac/ed/ph/snuggletex/internal/util/ObjectDumperOptions;
    value = .enum Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;->TO_STRING:Luk/ac/ed/ph/snuggletex/internal/util/DumpMode;
.end annotation


# static fields
.field public static final DEFAULT_STYLE:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;


# instance fields
.field private final fontFamily:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

.field private final fontSize:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

.field private final parentStyle:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    sget-object v1, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;->NORMAL:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    sget-object v2, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;->NORMALSIZE:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;-><init>(Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;)V

    sput-object v0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;->DEFAULT_STYLE:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    return-void
.end method

.method public constructor <init>(Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;->parentStyle:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    iput-object p2, p0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;->fontFamily:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    iput-object p3, p0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;->fontSize:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    return-void
.end method


# virtual methods
.method public getFontFamily()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;->fontFamily:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    return-object v0
.end method

.method public getFontSize()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;->fontSize:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    return-object v0
.end method

.method public getParentStyle()Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;->parentStyle:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    return-object v0
.end method

.method public isEquivalentTo(Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;)Z
    .locals 2

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;->fontFamily:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    iget-object v1, p1, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;->fontFamily:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;->fontSize:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    iget-object p1, p1, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;->fontSize:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(fontFamily="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;->fontFamily:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontFamily;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",fontSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;->fontSize:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle$FontSize;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",parentStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;->parentStyle:Luk/ac/ed/ph/snuggletex/definitions/ComputedStyle;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
