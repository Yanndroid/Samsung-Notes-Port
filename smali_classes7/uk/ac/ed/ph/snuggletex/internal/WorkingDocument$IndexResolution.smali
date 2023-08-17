.class public Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$IndexResolution;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/ac/ed/ph/snuggletex/internal/WorkingDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexResolution"
.end annotation


# instance fields
.field public final indexInComponent:I

.field public final scoreboardIndex:I

.field public final slice:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;


# direct methods
.method public constructor <init>(ILuk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$IndexResolution;->scoreboardIndex:I

    iput-object p2, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$IndexResolution;->slice:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;

    iput p3, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$IndexResolution;->indexInComponent:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(sbIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$IndexResolution;->scoreboardIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", slice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$IndexResolution;->slice:Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$Slice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", indexInComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Luk/ac/ed/ph/snuggletex/internal/WorkingDocument$IndexResolution;->indexInComponent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
