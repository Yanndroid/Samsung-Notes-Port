.class Luk/ac/ed/ph/snuggletex/SnugglePackage$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luk/ac/ed/ph/snuggletex/SnugglePackage$LineHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/ac/ed/ph/snuggletex/SnugglePackage;->loadMathCharacterBrackets(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Luk/ac/ed/ph/snuggletex/SnugglePackage;


# direct methods
.method public constructor <init>(Luk/ac/ed/ph/snuggletex/SnugglePackage;)V
    .locals 0

    iput-object p1, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage$4;->this$0:Luk/ac/ed/ph/snuggletex/SnugglePackage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleLine(Ljava/lang/String;)V
    .locals 5

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-static {v2}, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;->valueOf(Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;

    move-result-object v2

    const/4 v3, 0x3

    aget-object p1, p1, v3

    const-string v3, "INFER"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage$4;->this$0:Luk/ac/ed/ph/snuggletex/SnugglePackage;

    const-string v4, "Bracket input command"

    invoke-static {v3, v0, v4}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->access$100(Luk/ac/ed/ph/snuggletex/SnugglePackage;Ljava/lang/String;Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;

    move-result-object v0

    iget-object v3, p0, Luk/ac/ed/ph/snuggletex/SnugglePackage$4;->this$0:Luk/ac/ed/ph/snuggletex/SnugglePackage;

    const-string v4, "Fence target"

    invoke-static {v3, v1, v4}, Luk/ac/ed/ph/snuggletex/SnugglePackage;->access$100(Luk/ac/ed/ph/snuggletex/SnugglePackage;Ljava/lang/String;Ljava/lang/String;)Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;

    move-result-object v1

    new-instance v3, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation;

    invoke-direct {v3, v1, v2, p1}, Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation;-><init>(Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;Luk/ac/ed/ph/snuggletex/semantics/MathBracketInterpretation$BracketType;Z)V

    invoke-virtual {v0, v3}, Luk/ac/ed/ph/snuggletex/definitions/MathCharacter;->addInterpretation(Luk/ac/ed/ph/snuggletex/semantics/Interpretation;)V

    return-void
.end method
