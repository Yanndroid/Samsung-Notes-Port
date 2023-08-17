.class public final Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CharacterSource"
.end annotation


# instance fields
.field public final context:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$SourceContext;

.field private transient stringRepresentation:Ljava/lang/String;

.field public final substitutedSource:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;

.field public final substitutedText:Ljava/lang/CharSequence;

.field public final substitutionOffset:I


# direct methods
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$SourceContext;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v0}, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;-><init>(Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$SourceContext;Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;ILjava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$SourceContext;Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;ILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;->context:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$SourceContext;

    iput-object p2, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;->substitutedSource:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;

    iput p3, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;->substitutionOffset:I

    iput-object p4, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;->substitutedText:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;->stringRepresentation:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "(context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;->context:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$SourceContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;->substitutedSource:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;

    if-eqz v1, :cond_0

    const-string v1, ",substituted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;->substitutedSource:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;->substitutionOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",substitutedText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;->substitutedText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;->stringRepresentation:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$CharacterSource;->stringRepresentation:Ljava/lang/String;

    return-object v0
.end method
