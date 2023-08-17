.class public interface abstract Luk/ac/ed/ph/snuggletex/semantics/Interpretation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Luk/ac/ed/ph/snuggletex/semantics/Interpretation$MarkerInterpretation;
    }
.end annotation


# static fields
.field public static final LIST:Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

.field public static final STYLE_SENTINEL:Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

.field public static final TABULAR:Luk/ac/ed/ph/snuggletex/semantics/Interpretation;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Luk/ac/ed/ph/snuggletex/semantics/Interpretation$MarkerInterpretation;

    sget-object v1, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->TABULAR:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    invoke-direct {v0, v1}, Luk/ac/ed/ph/snuggletex/semantics/Interpretation$MarkerInterpretation;-><init>(Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;)V

    sput-object v0, Luk/ac/ed/ph/snuggletex/semantics/Interpretation;->TABULAR:Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    new-instance v0, Luk/ac/ed/ph/snuggletex/semantics/Interpretation$MarkerInterpretation;

    sget-object v1, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->LIST:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    invoke-direct {v0, v1}, Luk/ac/ed/ph/snuggletex/semantics/Interpretation$MarkerInterpretation;-><init>(Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;)V

    sput-object v0, Luk/ac/ed/ph/snuggletex/semantics/Interpretation;->LIST:Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    new-instance v0, Luk/ac/ed/ph/snuggletex/semantics/Interpretation$MarkerInterpretation;

    sget-object v1, Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;->STYLE_SENTINEL:Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;

    invoke-direct {v0, v1}, Luk/ac/ed/ph/snuggletex/semantics/Interpretation$MarkerInterpretation;-><init>(Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;)V

    sput-object v0, Luk/ac/ed/ph/snuggletex/semantics/Interpretation;->STYLE_SENTINEL:Luk/ac/ed/ph/snuggletex/semantics/Interpretation;

    return-void
.end method


# virtual methods
.method public abstract getType()Luk/ac/ed/ph/snuggletex/semantics/InterpretationType;
.end method
