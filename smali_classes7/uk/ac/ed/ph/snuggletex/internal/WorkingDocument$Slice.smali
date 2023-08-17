.class public final Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Slice"
.end annotation


# instance fields
.field public final componentIndexOffset:I

.field public final endIndex:I

.field public final resolvedComponent:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;

.field public final startIndex:I


# direct methods
.method public constructor <init>(IILuk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;->startIndex:I

    iput p2, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;->endIndex:I

    iput-object p3, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;->resolvedComponent:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;

    iput p4, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;->componentIndexOffset:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(span=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;->startIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;->endIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;->resolvedComponent:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; offset "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;->componentIndexOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
