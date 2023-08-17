.class public Luk/ac/ed/ph/snuggletex/semantics/Interpretation$MarkerInterpretation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/semantics/Interpretation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/ac/ed/ph/snuggletex/semantics/Interpretation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MarkerInterpretation"
.end annotation


# instance fields
.field private final type:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;


# direct methods
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/semantics/Interpretation$MarkerInterpretation;->type:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    return-void
.end method


# virtual methods
.method public getType()Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;
    .locals 1

    iget-object v0, p0, Luk/ac/ed/ph/snuggletex/semantics/Interpretation$MarkerInterpretation;->type:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    return-object v0
.end method
