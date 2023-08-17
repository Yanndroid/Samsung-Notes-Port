.class public Lnet/lingala/zip4j/crypto/engine/AESEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final S:[B

.field private static final T0:[I

.field private static final rcon:[I


# instance fields
.field private C0:I

.field private C1:I

.field private C2:I

.field private C3:I

.field private rounds:I

.field private workingKey:[[I


# direct methods
.method public static constructor <clinit>()V
    .locals 25

    const/16 v0, 0x100

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v3, 0x7c

    aput-byte v3, v0, v1

    const/4 v4, 0x2

    const/16 v5, 0x77

    aput-byte v5, v0, v4

    const/4 v6, 0x3

    const/16 v7, 0x7b

    aput-byte v7, v0, v6

    const/16 v8, -0xe

    const/4 v9, 0x4

    aput-byte v8, v0, v9

    const/4 v8, 0x5

    const/16 v10, 0x6b

    aput-byte v10, v0, v8

    const/4 v11, 0x6

    const/16 v12, 0x6f

    aput-byte v12, v0, v11

    const/16 v13, -0x3b

    const/4 v14, 0x7

    aput-byte v13, v0, v14

    const/16 v13, 0x8

    const/16 v15, 0x30

    aput-byte v15, v0, v13

    const/16 v16, 0x9

    aput-byte v1, v0, v16

    const/16 v17, 0xa

    const/16 v18, 0x67

    aput-byte v18, v0, v17

    const/16 v19, 0xb

    const/16 v20, 0x2b

    aput-byte v20, v0, v19

    const/16 v21, -0x2

    const/16 v22, 0xc

    aput-byte v21, v0, v22

    const/16 v21, 0xd

    const/16 v23, -0x29

    aput-byte v23, v0, v21

    const/16 v21, 0xe

    const/16 v23, -0x55

    aput-byte v23, v0, v21

    const/16 v21, 0xf

    const/16 v23, 0x76

    aput-byte v23, v0, v21

    const/16 v21, 0x10

    const/16 v23, -0x36

    aput-byte v23, v0, v21

    const/16 v21, 0x11

    const/16 v23, -0x7e

    aput-byte v23, v0, v21

    const/16 v21, 0x12

    const/16 v23, -0x37

    aput-byte v23, v0, v21

    const/16 v21, 0x13

    const/16 v23, 0x7d

    aput-byte v23, v0, v21

    const/16 v21, 0x14

    const/16 v23, -0x6

    aput-byte v23, v0, v21

    const/16 v21, 0x15

    const/16 v23, 0x59

    aput-byte v23, v0, v21

    const/16 v21, 0x16

    const/16 v23, 0x47

    aput-byte v23, v0, v21

    const/16 v21, 0x17

    const/16 v23, -0x10

    aput-byte v23, v0, v21

    const/16 v21, 0x18

    const/16 v23, -0x53

    aput-byte v23, v0, v21

    const/16 v21, 0x19

    const/16 v23, -0x2c

    aput-byte v23, v0, v21

    const/16 v21, 0x1a

    const/16 v23, -0x5e

    aput-byte v23, v0, v21

    const/16 v21, 0x1b

    const/16 v23, -0x51

    aput-byte v23, v0, v21

    const/16 v21, 0x1c

    const/16 v23, -0x64

    aput-byte v23, v0, v21

    const/16 v21, 0x1d

    const/16 v23, -0x5c

    aput-byte v23, v0, v21

    const/16 v21, 0x72

    const/16 v1, 0x1e

    aput-byte v21, v0, v1

    const/16 v21, 0x1f

    const/16 v24, -0x40

    aput-byte v24, v0, v21

    const/16 v21, 0x20

    const/16 v24, -0x49

    aput-byte v24, v0, v21

    const/16 v21, 0x21

    const/16 v24, -0x3

    aput-byte v24, v0, v21

    const/16 v21, 0x22

    const/16 v24, -0x6d

    aput-byte v24, v0, v21

    const/16 v21, 0x23

    const/16 v24, 0x26

    aput-byte v24, v0, v21

    const/16 v21, 0x24

    const/16 v24, 0x36

    aput-byte v24, v0, v21

    const/16 v21, 0x25

    const/16 v24, 0x3f

    aput-byte v24, v0, v21

    const/16 v21, 0x26

    const/16 v24, -0x9

    aput-byte v24, v0, v21

    const/16 v21, 0x27

    const/16 v24, -0x34

    aput-byte v24, v0, v21

    const/16 v21, 0x28

    const/16 v24, 0x34

    aput-byte v24, v0, v21

    const/16 v21, 0x29

    const/16 v24, -0x5b

    aput-byte v24, v0, v21

    const/16 v21, 0x2a

    const/16 v24, -0x1b

    aput-byte v24, v0, v21

    const/16 v21, -0xf

    aput-byte v21, v0, v20

    const/16 v21, 0x2c

    const/16 v24, 0x71

    aput-byte v24, v0, v21

    const/16 v21, 0x2d

    const/16 v24, -0x28

    aput-byte v24, v0, v21

    const/16 v21, 0x2e

    const/16 v24, 0x31

    aput-byte v24, v0, v21

    const/16 v21, 0x2f

    const/16 v24, 0x15

    aput-byte v24, v0, v21

    aput-byte v9, v0, v15

    const/16 v21, 0x31

    const/16 v24, -0x39

    aput-byte v24, v0, v21

    const/16 v21, 0x32

    const/16 v24, 0x23

    aput-byte v24, v0, v21

    const/16 v21, 0x33

    const/16 v24, -0x3d

    aput-byte v24, v0, v21

    const/16 v21, 0x34

    const/16 v24, 0x18

    aput-byte v24, v0, v21

    const/16 v21, 0x35

    const/16 v24, -0x6a

    aput-byte v24, v0, v21

    const/16 v21, 0x36

    aput-byte v8, v0, v21

    const/16 v21, 0x37

    const/16 v24, -0x66

    aput-byte v24, v0, v21

    const/16 v21, 0x38

    aput-byte v14, v0, v21

    const/16 v21, 0x39

    const/16 v24, 0x12

    aput-byte v24, v0, v21

    const/16 v21, 0x3a

    const/16 v24, -0x80

    aput-byte v24, v0, v21

    const/16 v21, 0x3b

    const/16 v24, -0x1e

    aput-byte v24, v0, v21

    const/16 v21, 0x3c

    const/16 v24, -0x15

    aput-byte v24, v0, v21

    const/16 v21, 0x3d

    const/16 v24, 0x27

    aput-byte v24, v0, v21

    const/16 v21, 0x3e

    const/16 v24, -0x4e

    aput-byte v24, v0, v21

    const/16 v21, 0x3f

    const/16 v24, 0x75

    aput-byte v24, v0, v21

    const/16 v21, 0x40

    aput-byte v16, v0, v21

    const/16 v21, 0x41

    const/16 v24, -0x7d

    aput-byte v24, v0, v21

    const/16 v21, 0x42

    const/16 v24, 0x2c

    aput-byte v24, v0, v21

    const/16 v21, 0x43

    const/16 v24, 0x1a

    aput-byte v24, v0, v21

    const/16 v21, 0x44

    const/16 v24, 0x1b

    aput-byte v24, v0, v21

    const/16 v21, 0x45

    const/16 v24, 0x6e

    aput-byte v24, v0, v21

    const/16 v21, 0x46

    const/16 v24, 0x5a

    aput-byte v24, v0, v21

    const/16 v21, 0x47

    const/16 v24, -0x60

    aput-byte v24, v0, v21

    const/16 v21, 0x48

    const/16 v24, 0x52

    aput-byte v24, v0, v21

    const/16 v21, 0x49

    const/16 v24, 0x3b

    aput-byte v24, v0, v21

    const/16 v21, 0x4a

    const/16 v24, -0x2a

    aput-byte v24, v0, v21

    const/16 v21, 0x4b

    const/16 v24, -0x4d

    aput-byte v24, v0, v21

    const/16 v21, 0x4c

    const/16 v24, 0x29

    aput-byte v24, v0, v21

    const/16 v21, 0x4d

    const/16 v24, -0x1d

    aput-byte v24, v0, v21

    const/16 v21, 0x4e

    const/16 v24, 0x2f

    aput-byte v24, v0, v21

    const/16 v21, 0x4f

    const/16 v24, -0x7c

    aput-byte v24, v0, v21

    const/16 v21, 0x50

    const/16 v24, 0x53

    aput-byte v24, v0, v21

    const/16 v21, 0x51

    const/16 v24, -0x2f

    aput-byte v24, v0, v21

    const/16 v21, 0x53

    const/16 v24, -0x13

    aput-byte v24, v0, v21

    const/16 v21, 0x54

    const/16 v24, 0x20

    aput-byte v24, v0, v21

    const/16 v21, 0x55

    const/16 v24, -0x4

    aput-byte v24, v0, v21

    const/16 v21, 0x56

    const/16 v24, -0x4f

    aput-byte v24, v0, v21

    const/16 v21, 0x57

    const/16 v24, 0x5b

    aput-byte v24, v0, v21

    const/16 v21, 0x58

    const/16 v24, 0x6a

    aput-byte v24, v0, v21

    const/16 v21, 0x59

    const/16 v24, -0x35

    aput-byte v24, v0, v21

    const/16 v21, 0x5a

    const/16 v24, -0x42

    aput-byte v24, v0, v21

    const/16 v21, 0x5b

    const/16 v24, 0x39

    aput-byte v24, v0, v21

    const/16 v21, 0x5c

    const/16 v24, 0x4a

    aput-byte v24, v0, v21

    const/16 v21, 0x5d

    const/16 v24, 0x4c

    aput-byte v24, v0, v21

    const/16 v21, 0x5e

    const/16 v24, 0x58

    aput-byte v24, v0, v21

    const/16 v21, 0x5f

    const/16 v24, -0x31

    aput-byte v24, v0, v21

    const/16 v21, 0x60

    const/16 v24, -0x30

    aput-byte v24, v0, v21

    const/16 v21, 0x61

    const/16 v24, -0x11

    aput-byte v24, v0, v21

    const/16 v21, 0x62

    const/16 v24, -0x56

    aput-byte v24, v0, v21

    const/16 v21, -0x5

    aput-byte v21, v0, v2

    const/16 v21, 0x64

    const/16 v24, 0x43

    aput-byte v24, v0, v21

    const/16 v21, 0x65

    const/16 v24, 0x4d

    aput-byte v24, v0, v21

    const/16 v21, 0x66

    const/16 v24, 0x33

    aput-byte v24, v0, v21

    const/16 v21, -0x7b

    aput-byte v21, v0, v18

    const/16 v21, 0x68

    const/16 v24, 0x45

    aput-byte v24, v0, v21

    const/16 v21, 0x69

    const/16 v24, -0x7

    aput-byte v24, v0, v21

    const/16 v21, 0x6a

    aput-byte v4, v0, v21

    const/16 v21, 0x7f

    aput-byte v21, v0, v10

    const/16 v21, 0x6c

    const/16 v24, 0x50

    aput-byte v24, v0, v21

    const/16 v21, 0x6d

    const/16 v24, 0x3c

    aput-byte v24, v0, v21

    const/16 v21, 0x6e

    const/16 v24, -0x61

    aput-byte v24, v0, v21

    const/16 v21, -0x58

    aput-byte v21, v0, v12

    const/16 v21, 0x70

    const/16 v24, 0x51

    aput-byte v24, v0, v21

    const/16 v21, 0x71

    const/16 v24, -0x5d

    aput-byte v24, v0, v21

    const/16 v21, 0x72

    const/16 v24, 0x40

    aput-byte v24, v0, v21

    const/16 v21, 0x73

    const/16 v24, -0x71

    aput-byte v24, v0, v21

    const/16 v21, 0x74

    const/16 v24, -0x6e

    aput-byte v24, v0, v21

    const/16 v21, 0x75

    const/16 v24, -0x63

    aput-byte v24, v0, v21

    const/16 v21, 0x76

    const/16 v24, 0x38

    aput-byte v24, v0, v21

    const/16 v21, -0xb

    aput-byte v21, v0, v5

    const/16 v21, 0x78

    const/16 v24, -0x44

    aput-byte v24, v0, v21

    const/16 v21, 0x79

    const/16 v24, -0x4a

    aput-byte v24, v0, v21

    const/16 v21, 0x7a

    const/16 v24, -0x26

    aput-byte v24, v0, v21

    const/16 v21, 0x21

    aput-byte v21, v0, v7

    const/16 v21, 0x10

    aput-byte v21, v0, v3

    const/16 v21, 0x7d

    const/16 v24, -0x1

    aput-byte v24, v0, v21

    const/16 v21, 0x7e

    const/16 v24, -0xd

    aput-byte v24, v0, v21

    const/16 v21, 0x7f

    const/16 v24, -0x2e

    aput-byte v24, v0, v21

    const/16 v21, 0x80

    const/16 v24, -0x33

    aput-byte v24, v0, v21

    const/16 v21, 0x81

    aput-byte v22, v0, v21

    const/16 v21, 0x82

    const/16 v24, 0x13

    aput-byte v24, v0, v21

    const/16 v21, 0x83

    const/16 v24, -0x14

    aput-byte v24, v0, v21

    const/16 v21, 0x84

    const/16 v24, 0x5f

    aput-byte v24, v0, v21

    const/16 v21, 0x85

    const/16 v24, -0x69

    aput-byte v24, v0, v21

    const/16 v21, 0x86

    const/16 v24, 0x44

    aput-byte v24, v0, v21

    const/16 v21, 0x87

    const/16 v24, 0x17

    aput-byte v24, v0, v21

    const/16 v21, 0x88

    const/16 v24, -0x3c

    aput-byte v24, v0, v21

    const/16 v21, 0x89

    const/16 v24, -0x59

    aput-byte v24, v0, v21

    const/16 v21, 0x8a

    const/16 v24, 0x7e

    aput-byte v24, v0, v21

    const/16 v21, 0x8b

    const/16 v24, 0x3d

    aput-byte v24, v0, v21

    const/16 v21, 0x8c

    const/16 v24, 0x64

    aput-byte v24, v0, v21

    const/16 v21, 0x8d

    const/16 v24, 0x5d

    aput-byte v24, v0, v21

    const/16 v21, 0x8e

    const/16 v24, 0x19

    aput-byte v24, v0, v21

    const/16 v21, 0x8f

    const/16 v24, 0x73

    aput-byte v24, v0, v21

    const/16 v21, 0x90

    const/16 v24, 0x60

    aput-byte v24, v0, v21

    const/16 v21, 0x91

    const/16 v24, -0x7f

    aput-byte v24, v0, v21

    const/16 v21, 0x92

    const/16 v24, 0x4f

    aput-byte v24, v0, v21

    const/16 v21, 0x93

    const/16 v24, -0x24

    aput-byte v24, v0, v21

    const/16 v21, 0x94

    const/16 v24, 0x22

    aput-byte v24, v0, v21

    const/16 v21, 0x95

    const/16 v24, 0x2a

    aput-byte v24, v0, v21

    const/16 v21, 0x96

    const/16 v24, -0x70

    aput-byte v24, v0, v21

    const/16 v21, 0x97

    const/16 v24, -0x78

    aput-byte v24, v0, v21

    const/16 v21, 0x98

    const/16 v24, 0x46

    aput-byte v24, v0, v21

    const/16 v21, 0x99

    const/16 v24, -0x12

    aput-byte v24, v0, v21

    const/16 v21, 0x9a

    const/16 v24, -0x48

    aput-byte v24, v0, v21

    const/16 v21, 0x9b

    const/16 v24, 0x14

    aput-byte v24, v0, v21

    const/16 v21, 0x9c

    const/16 v24, -0x22

    aput-byte v24, v0, v21

    const/16 v21, 0x9d

    const/16 v24, 0x5e

    aput-byte v24, v0, v21

    const/16 v21, 0x9e

    aput-byte v19, v0, v21

    const/16 v21, 0x9f

    const/16 v24, -0x25

    aput-byte v24, v0, v21

    const/16 v21, 0xa0

    const/16 v24, -0x20

    aput-byte v24, v0, v21

    const/16 v21, 0xa1

    const/16 v24, 0x32

    aput-byte v24, v0, v21

    const/16 v21, 0xa2

    const/16 v24, 0x3a

    aput-byte v24, v0, v21

    const/16 v21, 0xa3

    aput-byte v17, v0, v21

    const/16 v21, 0xa4

    const/16 v24, 0x49

    aput-byte v24, v0, v21

    const/16 v21, 0xa5

    aput-byte v11, v0, v21

    const/16 v21, 0xa6

    const/16 v24, 0x24

    aput-byte v24, v0, v21

    const/16 v21, 0xa7

    const/16 v24, 0x5c

    aput-byte v24, v0, v21

    const/16 v21, 0xa8

    const/16 v24, -0x3e

    aput-byte v24, v0, v21

    const/16 v21, 0xa9

    const/16 v24, -0x2d

    aput-byte v24, v0, v21

    const/16 v21, 0xaa

    const/16 v24, -0x54

    aput-byte v24, v0, v21

    const/16 v21, 0xab

    const/16 v24, 0x62

    aput-byte v24, v0, v21

    const/16 v21, 0xac

    const/16 v24, -0x6f

    aput-byte v24, v0, v21

    const/16 v21, 0xad

    const/16 v24, -0x6b

    aput-byte v24, v0, v21

    const/16 v21, 0xae

    const/16 v24, -0x1c

    aput-byte v24, v0, v21

    const/16 v21, 0xaf

    const/16 v24, 0x79

    aput-byte v24, v0, v21

    const/16 v21, 0xb0

    const/16 v24, -0x19

    aput-byte v24, v0, v21

    const/16 v21, 0xb1

    const/16 v24, -0x38

    aput-byte v24, v0, v21

    const/16 v21, 0xb2

    const/16 v24, 0x37

    aput-byte v24, v0, v21

    const/16 v21, 0xb3

    const/16 v24, 0x6d

    aput-byte v24, v0, v21

    const/16 v21, 0xb4

    const/16 v24, -0x73

    aput-byte v24, v0, v21

    const/16 v21, 0xb5

    const/16 v24, -0x2b

    aput-byte v24, v0, v21

    const/16 v21, 0xb6

    const/16 v24, 0x4e

    aput-byte v24, v0, v21

    const/16 v21, 0xb7

    const/16 v24, -0x57

    aput-byte v24, v0, v21

    const/16 v21, 0xb8

    const/16 v24, 0x6c

    aput-byte v24, v0, v21

    const/16 v21, 0xb9

    const/16 v24, 0x56

    aput-byte v24, v0, v21

    const/16 v21, 0xba

    const/16 v24, -0xc

    aput-byte v24, v0, v21

    const/16 v21, 0xbb

    const/16 v24, -0x16

    aput-byte v24, v0, v21

    const/16 v21, 0xbc

    const/16 v24, 0x65

    aput-byte v24, v0, v21

    const/16 v21, 0xbd

    const/16 v24, 0x7a

    aput-byte v24, v0, v21

    const/16 v21, 0xbe

    const/16 v24, -0x52

    aput-byte v24, v0, v21

    const/16 v21, 0xbf

    aput-byte v13, v0, v21

    const/16 v21, 0xc0

    const/16 v24, -0x46

    aput-byte v24, v0, v21

    const/16 v21, 0xc1

    const/16 v24, 0x78

    aput-byte v24, v0, v21

    const/16 v21, 0xc2

    const/16 v24, 0x25

    aput-byte v24, v0, v21

    const/16 v21, 0xc3

    const/16 v24, 0x2e

    aput-byte v24, v0, v21

    const/16 v21, 0xc4

    const/16 v24, 0x1c

    aput-byte v24, v0, v21

    const/16 v21, 0xc5

    const/16 v24, -0x5a

    aput-byte v24, v0, v21

    const/16 v21, 0xc6

    const/16 v24, -0x4c

    aput-byte v24, v0, v21

    const/16 v21, 0xc7

    const/16 v24, -0x3a

    aput-byte v24, v0, v21

    const/16 v21, 0xc8

    const/16 v24, -0x18

    aput-byte v24, v0, v21

    const/16 v21, 0xc9

    const/16 v24, -0x23

    aput-byte v24, v0, v21

    const/16 v21, 0xca

    const/16 v24, 0x74

    aput-byte v24, v0, v21

    const/16 v21, 0xcb

    const/16 v24, 0x1f

    aput-byte v24, v0, v21

    const/16 v21, 0xcc

    const/16 v24, 0x4b

    aput-byte v24, v0, v21

    const/16 v21, 0xcd

    const/16 v24, -0x43

    aput-byte v24, v0, v21

    const/16 v21, 0xce

    const/16 v24, -0x75

    aput-byte v24, v0, v21

    const/16 v21, 0xcf

    const/16 v24, -0x76

    aput-byte v24, v0, v21

    const/16 v21, 0xd0

    const/16 v24, 0x70

    aput-byte v24, v0, v21

    const/16 v21, 0xd1

    const/16 v24, 0x3e

    aput-byte v24, v0, v21

    const/16 v21, 0xd2

    const/16 v24, -0x4b

    aput-byte v24, v0, v21

    const/16 v21, 0xd3

    const/16 v24, 0x66

    aput-byte v24, v0, v21

    const/16 v21, 0xd4

    const/16 v24, 0x48

    aput-byte v24, v0, v21

    const/16 v21, 0xd5

    aput-byte v6, v0, v21

    const/16 v21, 0xd6

    const/16 v24, -0xa

    aput-byte v24, v0, v21

    const/16 v21, 0xd7

    const/16 v24, 0xe

    aput-byte v24, v0, v21

    const/16 v21, 0xd8

    const/16 v24, 0x61

    aput-byte v24, v0, v21

    const/16 v21, 0xd9

    const/16 v24, 0x35

    aput-byte v24, v0, v21

    const/16 v21, 0xda

    const/16 v24, 0x57

    aput-byte v24, v0, v21

    const/16 v21, 0xdb

    const/16 v24, -0x47

    aput-byte v24, v0, v21

    const/16 v21, 0xdc

    const/16 v24, -0x7a

    aput-byte v24, v0, v21

    const/16 v21, 0xdd

    const/16 v24, -0x3f

    aput-byte v24, v0, v21

    const/16 v21, 0xde

    const/16 v24, 0x1d

    aput-byte v24, v0, v21

    const/16 v21, 0xdf

    const/16 v24, -0x62

    aput-byte v24, v0, v21

    const/16 v21, 0xe0

    const/16 v24, -0x1f

    aput-byte v24, v0, v21

    const/16 v21, 0xe1

    const/16 v24, -0x8

    aput-byte v24, v0, v21

    const/16 v21, 0xe2

    const/16 v24, -0x68

    aput-byte v24, v0, v21

    const/16 v21, 0xe3

    const/16 v24, 0x11

    aput-byte v24, v0, v21

    const/16 v21, 0xe4

    const/16 v24, 0x69

    aput-byte v24, v0, v21

    const/16 v21, 0xe5

    const/16 v24, -0x27

    aput-byte v24, v0, v21

    const/16 v21, 0xe6

    const/16 v24, -0x72

    aput-byte v24, v0, v21

    const/16 v21, 0xe7

    const/16 v24, -0x6c

    aput-byte v24, v0, v21

    const/16 v21, 0xe8

    const/16 v24, -0x65

    aput-byte v24, v0, v21

    const/16 v21, 0xe9

    aput-byte v1, v0, v21

    const/16 v21, 0xea

    const/16 v24, -0x79

    aput-byte v24, v0, v21

    const/16 v21, 0xeb

    const/16 v24, -0x17

    aput-byte v24, v0, v21

    const/16 v21, 0xec

    const/16 v24, -0x32

    aput-byte v24, v0, v21

    const/16 v21, 0xed

    const/16 v24, 0x55

    aput-byte v24, v0, v21

    const/16 v21, 0xee

    const/16 v24, 0x28

    aput-byte v24, v0, v21

    const/16 v21, 0xef

    const/16 v24, -0x21

    aput-byte v24, v0, v21

    const/16 v21, 0xf0

    const/16 v24, -0x74

    aput-byte v24, v0, v21

    const/16 v21, 0xf1

    const/16 v24, -0x5f

    aput-byte v24, v0, v21

    const/16 v21, 0xf2

    const/16 v24, -0x77

    aput-byte v24, v0, v21

    const/16 v21, 0xf3

    const/16 v24, 0xd

    aput-byte v24, v0, v21

    const/16 v21, 0xf4

    const/16 v24, -0x41

    aput-byte v24, v0, v21

    const/16 v21, 0xf5

    const/16 v24, -0x1a

    aput-byte v24, v0, v21

    const/16 v21, 0xf6

    const/16 v24, 0x42

    aput-byte v24, v0, v21

    const/16 v21, 0xf7

    const/16 v24, 0x68

    aput-byte v24, v0, v21

    const/16 v21, 0xf8

    const/16 v24, 0x41

    aput-byte v24, v0, v21

    const/16 v21, 0xf9

    const/16 v24, -0x67

    aput-byte v24, v0, v21

    const/16 v21, 0xfa

    const/16 v24, 0x2d

    aput-byte v24, v0, v21

    const/16 v21, 0xfb

    const/16 v24, 0xf

    aput-byte v24, v0, v21

    const/16 v21, 0xfc

    const/16 v24, -0x50

    aput-byte v24, v0, v21

    const/16 v21, 0xfd

    const/16 v24, 0x54

    aput-byte v24, v0, v21

    const/16 v21, 0xfe

    const/16 v24, -0x45

    aput-byte v24, v0, v21

    const/16 v21, 0xff

    const/16 v24, 0x16

    aput-byte v24, v0, v21

    sput-object v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->rcon:[I

    const/16 v0, 0x100

    new-array v0, v0, [I

    const/16 v21, 0x0

    const v24, -0x5a9c9c3a

    aput v24, v0, v21

    const v21, -0x7b838308

    const/16 v23, 0x1

    aput v21, v0, v23

    const v21, -0x66888812

    aput v21, v0, v4

    const v4, -0x7284840a

    aput v4, v0, v6

    const v4, 0xdf2f2ff

    aput v4, v0, v9

    const v4, -0x4294942a

    aput v4, v0, v8

    const v4, -0x4e909022

    aput v4, v0, v11

    const v4, 0x54c5c591

    aput v4, v0, v14

    const v4, 0x50303060

    aput v4, v0, v13

    const v4, 0x3010102

    aput v4, v0, v16

    const v4, -0x56989832

    aput v4, v0, v17

    const v4, 0x7d2b2b56

    aput v4, v0, v19

    const v4, 0x19fefee7

    aput v4, v0, v22

    const/16 v4, 0xd

    const v6, 0x62d7d7b5

    aput v6, v0, v4

    const/16 v4, 0xe

    const v6, -0x195454b3

    aput v6, v0, v4

    const/16 v4, 0xf

    const v6, -0x65898914

    aput v6, v0, v4

    const/16 v4, 0x10

    const v6, 0x45caca8f

    aput v6, v0, v4

    const/16 v4, 0x11

    const v6, -0x627d7de1

    aput v6, v0, v4

    const/16 v4, 0x12

    const v6, 0x40c9c989

    aput v6, v0, v4

    const/16 v4, 0x13

    const v6, -0x78828206

    aput v6, v0, v4

    const/16 v4, 0x14

    const v6, 0x15fafaef

    aput v6, v0, v4

    const/16 v4, 0x15

    const v6, -0x14a6a64e

    aput v6, v0, v4

    const/16 v4, 0x16

    const v6, -0x36b8b872

    aput v6, v0, v4

    const/16 v4, 0x17

    const v6, 0xbf0f0fb

    aput v6, v0, v4

    const/16 v4, 0x18

    const v6, -0x135252bf

    aput v6, v0, v4

    const/16 v4, 0x19

    const v6, 0x67d4d4b3

    aput v6, v0, v4

    const/16 v4, 0x1a

    const v6, -0x25d5da1

    aput v6, v0, v4

    const/16 v4, 0x1b

    const v6, -0x155050bb

    aput v6, v0, v4

    const/16 v4, 0x1c

    const v6, -0x406363dd

    aput v6, v0, v4

    const/16 v4, 0x1d

    const v6, -0x85b5bad

    aput v6, v0, v4

    const v4, -0x698d8d1c

    aput v4, v0, v1

    const/16 v1, 0x1f

    const v4, 0x5bc0c09b

    aput v4, v0, v1

    const/16 v1, 0x20

    const v4, -0x3d48488b

    aput v4, v0, v1

    const/16 v1, 0x21

    const v4, 0x1cfdfde1

    aput v4, v0, v1

    const/16 v1, 0x22

    const v4, -0x516c6cc3

    aput v4, v0, v1

    const/16 v1, 0x23

    const v4, 0x6a26264c

    aput v4, v0, v1

    const/16 v1, 0x24

    const v4, 0x5a36366c

    aput v4, v0, v1

    const/16 v1, 0x25

    const v4, 0x413f3f7e

    aput v4, v0, v1

    const/16 v1, 0x26

    const v4, 0x2f7f7f5

    aput v4, v0, v1

    const/16 v1, 0x27

    const v4, 0x4fcccc83

    aput v4, v0, v1

    const/16 v1, 0x28

    const v4, 0x5c343468

    aput v4, v0, v1

    const/16 v1, 0x29

    const v4, -0xb5a5aaf

    aput v4, v0, v1

    const/16 v1, 0x2a

    const v4, 0x34e5e5d1

    aput v4, v0, v1

    const v1, 0x8f1f1f9

    aput v1, v0, v20

    const/16 v1, 0x2c

    const v4, -0x6c8e8e1e

    aput v4, v0, v1

    const/16 v1, 0x2d

    const v4, 0x73d8d8ab

    aput v4, v0, v1

    const/16 v1, 0x2e

    const v4, 0x53313162

    aput v4, v0, v1

    const/16 v1, 0x2f

    const v4, 0x3f15152a

    aput v4, v0, v1

    const v1, 0xc040408

    aput v1, v0, v15

    const/16 v1, 0x31

    const v4, 0x52c7c795

    aput v4, v0, v1

    const/16 v1, 0x32

    const v4, 0x65232346

    aput v4, v0, v1

    const/16 v1, 0x33

    const v4, 0x5ec3c39d

    aput v4, v0, v1

    const/16 v1, 0x34

    const v4, 0x28181830

    aput v4, v0, v1

    const/16 v1, 0x35

    const v4, -0x5e6969c9

    aput v4, v0, v1

    const/16 v1, 0x36

    const v4, 0xf05050a

    aput v4, v0, v1

    const/16 v1, 0x37

    const v4, -0x4a6565d1

    aput v4, v0, v1

    const/16 v1, 0x38

    const v4, 0x907070e

    aput v4, v0, v1

    const/16 v1, 0x39

    const v4, 0x36121224

    aput v4, v0, v1

    const/16 v1, 0x3a

    const v4, -0x647f7fe5

    aput v4, v0, v1

    const/16 v1, 0x3b

    const v4, 0x3de2e2df

    aput v4, v0, v1

    const/16 v1, 0x3c

    const v4, 0x26ebebcd

    aput v4, v0, v1

    const/16 v1, 0x3d

    const v4, 0x6927274e

    aput v4, v0, v1

    const/16 v1, 0x3e

    const v4, -0x324d4d81

    aput v4, v0, v1

    const/16 v1, 0x3f

    const v4, -0x608a8a16

    aput v4, v0, v1

    const/16 v1, 0x40

    const v4, 0x1b090912

    aput v4, v0, v1

    const/16 v1, 0x41

    const v4, -0x617c7ce3

    aput v4, v0, v1

    const/16 v1, 0x42

    const v4, 0x742c2c58

    aput v4, v0, v1

    const/16 v1, 0x43

    const v4, 0x2e1a1a34

    aput v4, v0, v1

    const/16 v1, 0x44

    const v4, 0x2d1b1b36

    aput v4, v0, v1

    const/16 v1, 0x45

    const v4, -0x4d919124

    aput v4, v0, v1

    const/16 v1, 0x46

    const v4, -0x11a5a54c

    aput v4, v0, v1

    const/16 v1, 0x47

    const v4, -0x45f5fa5

    aput v4, v0, v1

    const/16 v1, 0x48

    const v4, -0x9adad5c

    aput v4, v0, v1

    const/16 v1, 0x49

    const v4, 0x4d3b3b76    # 1.96327264E8f

    aput v4, v0, v1

    const/16 v1, 0x4a

    const v4, 0x61d6d6b7

    aput v4, v0, v1

    const/16 v1, 0x4b

    const v4, -0x314c4c83

    aput v4, v0, v1

    const/16 v1, 0x4c

    const v4, 0x7b292952

    aput v4, v0, v1

    const/16 v1, 0x4d

    const v4, 0x3ee3e3dd

    aput v4, v0, v1

    const/16 v1, 0x4e

    const v4, 0x712f2f5e

    aput v4, v0, v1

    const/16 v1, 0x4f

    const v4, -0x687b7bed

    aput v4, v0, v1

    const/16 v1, 0x50

    const v4, -0xaacac5a

    aput v4, v0, v1

    const/16 v1, 0x51

    const v4, 0x68d1d1b9

    aput v4, v0, v1

    const/16 v1, 0x53

    const v4, 0x2cededc1

    aput v4, v0, v1

    const/16 v1, 0x54

    const v4, 0x60202040

    aput v4, v0, v1

    const/16 v1, 0x55

    const v4, 0x1ffcfce3

    aput v4, v0, v1

    const/16 v1, 0x56

    const v4, -0x374e4e87

    aput v4, v0, v1

    const/16 v1, 0x57

    const v4, -0x12a4a44a

    aput v4, v0, v1

    const/16 v1, 0x58

    const v4, -0x4195952c

    aput v4, v0, v1

    const/16 v1, 0x59

    const v4, 0x46cbcb8d

    aput v4, v0, v1

    const/16 v1, 0x5a

    const v4, -0x26414199

    aput v4, v0, v1

    const/16 v1, 0x5b

    const v4, 0x4b393972    # 1.2138866E7f

    aput v4, v0, v1

    const/16 v1, 0x5c

    const v4, -0x21b5b56c

    aput v4, v0, v1

    const/16 v1, 0x5d

    const v4, -0x2bb3b368

    aput v4, v0, v1

    const/16 v1, 0x5e

    const v4, -0x17a7a750

    aput v4, v0, v1

    const/16 v1, 0x5f

    const v4, 0x4acfcf85    # 6809538.5f

    aput v4, v0, v1

    const/16 v1, 0x60

    const v4, 0x6bd0d0bb

    aput v4, v0, v1

    const/16 v1, 0x61

    const v4, 0x2aefefc5

    aput v4, v0, v1

    const/16 v1, 0x62

    const v4, -0x1a5555b1

    aput v4, v0, v1

    const v1, 0x16fbfbed

    aput v1, v0, v2

    const/16 v1, 0x64

    const v2, -0x3abcbc7a

    aput v2, v0, v1

    const/16 v1, 0x65

    const v2, -0x28b2b266

    aput v2, v0, v1

    const/16 v1, 0x66

    const v2, 0x55333366

    aput v2, v0, v1

    const v1, -0x6b7a7aef

    aput v1, v0, v18

    const/16 v1, 0x68

    const v2, -0x30baba76

    aput v2, v0, v1

    const/16 v1, 0x69

    const v2, 0x10f9f9e9

    aput v2, v0, v1

    const/16 v1, 0x6a

    const v2, 0x6020204

    aput v2, v0, v1

    const v1, -0x7e808002

    aput v1, v0, v10

    const/16 v1, 0x6c

    const v2, -0xfafaf60

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, 0x443c3c78

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, -0x456060db

    aput v2, v0, v1

    const v1, -0x1c5757b5

    aput v1, v0, v12

    const/16 v1, 0x70

    const v2, -0xcaeae5e

    aput v2, v0, v1

    const/16 v1, 0x71

    const v2, -0x15c5ca3

    aput v2, v0, v1

    const/16 v1, 0x72

    const v2, -0x3fbfbf80

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, -0x757070fb

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, -0x526d6dc1

    aput v2, v0, v1

    const/16 v1, 0x75

    const v2, -0x436262df

    aput v2, v0, v1

    const/16 v1, 0x76

    const v2, 0x48383870    # 188641.75f

    aput v2, v0, v1

    const v1, 0x4f5f5f1

    aput v1, v0, v5

    const/16 v1, 0x78

    const v2, -0x2043439d

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, -0x3e494989

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, 0x75dadaaf

    aput v2, v0, v1

    const v1, 0x63212142

    aput v1, v0, v7

    const v1, 0x30101020

    aput v1, v0, v3

    const/16 v1, 0x7d

    const v2, 0x1affffe5

    aput v2, v0, v1

    const/16 v1, 0x7e

    const v2, 0xef3f3fd

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, 0x6dd2d2bf

    aput v2, v0, v1

    const/16 v1, 0x80

    const v2, 0x4ccdcd81    # 1.07899912E8f

    aput v2, v0, v1

    const/16 v1, 0x81

    const v2, 0x140c0c18

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, 0x35131326

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, 0x2fececc3

    aput v2, v0, v1

    const/16 v1, 0x84

    const v2, -0x1ea0a042

    aput v2, v0, v1

    const/16 v1, 0x85

    const v2, -0x5d6868cb

    aput v2, v0, v1

    const/16 v1, 0x86

    const v2, -0x33bbbb78    # -5.14504E7f

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, 0x3917172e

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, 0x57c4c493

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, -0xd5858ab

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, -0x7d818104

    aput v2, v0, v1

    const/16 v1, 0x8b

    const v2, 0x473d3d7a

    aput v2, v0, v1

    const/16 v1, 0x8c

    const v2, -0x539b9b38

    aput v2, v0, v1

    const/16 v1, 0x8d

    const v2, -0x18a2a246

    aput v2, v0, v1

    const/16 v1, 0x8e

    const v2, 0x2b191932

    aput v2, v0, v1

    const/16 v1, 0x8f

    const v2, -0x6a8c8c1a

    aput v2, v0, v1

    const/16 v1, 0x90

    const v2, -0x5f9f9f40

    aput v2, v0, v1

    const/16 v1, 0x91

    const v2, -0x677e7ee7

    aput v2, v0, v1

    const/16 v1, 0x92

    const v2, -0x2eb0b062

    aput v2, v0, v1

    const/16 v1, 0x93

    const v2, 0x7fdcdca3

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, 0x66222244

    aput v2, v0, v1

    const/16 v1, 0x95

    const v2, 0x7e2a2a54

    aput v2, v0, v1

    const/16 v1, 0x96

    const v2, -0x546f6fc5

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, -0x7c7777f5

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, -0x35b9b974    # -3248547.0f

    aput v2, v0, v1

    const/16 v1, 0x99

    const v2, 0x29eeeec7

    aput v2, v0, v1

    const/16 v1, 0x9a

    const v2, -0x2c474795

    aput v2, v0, v1

    const/16 v1, 0x9b

    const v2, 0x3c141428

    aput v2, v0, v1

    const/16 v1, 0x9c

    const v2, 0x79dedea7

    aput v2, v0, v1

    const/16 v1, 0x9d

    const v2, -0x1da1a144

    aput v2, v0, v1

    const/16 v1, 0x9e

    const v2, 0x1d0b0b16

    aput v2, v0, v1

    const/16 v1, 0x9f

    const v2, 0x76dbdbad

    aput v2, v0, v1

    const/16 v1, 0xa0

    const v2, 0x3be0e0db

    aput v2, v0, v1

    const/16 v1, 0xa1

    const v2, 0x56323264

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, 0x4e3a3a74

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, 0x1e0a0a14

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, -0x24b6b66e

    aput v2, v0, v1

    const/16 v1, 0xa5

    const v2, 0xa06060c

    aput v2, v0, v1

    const/16 v1, 0xa6

    const v2, 0x6c242448

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, -0x1ba3a348

    aput v2, v0, v1

    const/16 v1, 0xa8

    const v2, 0x5dc2c29f

    aput v2, v0, v1

    const/16 v1, 0xa9

    const v2, 0x6ed3d3bd

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, -0x105353bd

    aput v2, v0, v1

    const/16 v1, 0xab

    const v2, -0x599d9d3c

    aput v2, v0, v1

    const/16 v1, 0xac

    const v2, -0x576e6ec7

    aput v2, v0, v1

    const/16 v1, 0xad

    const v2, -0x5b6a6acf

    aput v2, v0, v1

    const/16 v1, 0xae

    const v2, 0x37e4e4d3

    aput v2, v0, v1

    const/16 v1, 0xaf

    const v2, -0x7486860e

    aput v2, v0, v1

    const/16 v1, 0xb0

    const v2, 0x32e7e7d5

    aput v2, v0, v1

    const/16 v1, 0xb1

    const v2, 0x43c8c88b

    aput v2, v0, v1

    const/16 v1, 0xb2

    const v2, 0x5937376e

    aput v2, v0, v1

    const/16 v1, 0xb3

    const v2, -0x48929226

    aput v2, v0, v1

    const/16 v1, 0xb4

    const v2, -0x737272ff

    aput v2, v0, v1

    const/16 v1, 0xb5

    const v2, 0x64d5d5b1

    aput v2, v0, v1

    const/16 v1, 0xb6

    const v2, -0x2db1b164

    aput v2, v0, v1

    const/16 v1, 0xb7

    const v2, -0x1f5656b7

    aput v2, v0, v1

    const/16 v1, 0xb8

    const v2, -0x4b939328

    aput v2, v0, v1

    const/16 v1, 0xb9

    const v2, -0x5a9a954

    aput v2, v0, v1

    const/16 v1, 0xba

    const v2, 0x7f4f4f3

    aput v2, v0, v1

    const/16 v1, 0xbb

    const v2, 0x25eaeacf

    aput v2, v0, v1

    const/16 v1, 0xbc

    const v2, -0x509a9a36

    aput v2, v0, v1

    const/16 v1, 0xbd

    const v2, -0x7185850c

    aput v2, v0, v1

    const/16 v1, 0xbe

    const v2, -0x165151b9

    aput v2, v0, v1

    const/16 v1, 0xbf

    const v2, 0x18080810

    aput v2, v0, v1

    const/16 v1, 0xc0

    const v2, -0x2a454591

    aput v2, v0, v1

    const/16 v1, 0xc1

    const v2, -0x77878710

    aput v2, v0, v1

    const/16 v1, 0xc2

    const v2, 0x6f25254a

    aput v2, v0, v1

    const/16 v1, 0xc3

    const v2, 0x722e2e5c

    aput v2, v0, v1

    const/16 v1, 0xc4

    const v2, 0x241c1c38

    aput v2, v0, v1

    const/16 v1, 0xc5

    const v2, -0xe5959a9

    aput v2, v0, v1

    const/16 v1, 0xc6

    const v2, -0x384b4b8d

    aput v2, v0, v1

    const/16 v1, 0xc7

    const v2, 0x51c6c697

    aput v2, v0, v1

    const/16 v1, 0xc8

    const v2, 0x23e8e8cb

    aput v2, v0, v1

    const/16 v1, 0xc9

    const v2, 0x7cdddda1

    aput v2, v0, v1

    const/16 v1, 0xca

    const v2, -0x638b8b18

    aput v2, v0, v1

    const/16 v1, 0xcb

    const v2, 0x211f1f3e

    aput v2, v0, v1

    const/16 v1, 0xcc

    const v2, -0x22b4b46a

    aput v2, v0, v1

    const/16 v1, 0xcd

    const v2, -0x2342429f

    aput v2, v0, v1

    const/16 v1, 0xce

    const v2, -0x797474f3

    aput v2, v0, v1

    const/16 v1, 0xcf

    const v2, -0x7a7575f1

    aput v2, v0, v1

    const/16 v1, 0xd0

    const v2, -0x6f8f8f20

    aput v2, v0, v1

    const/16 v1, 0xd1

    const v2, 0x423e3e7c

    aput v2, v0, v1

    const/16 v1, 0xd2

    const v2, -0x3b4a4a8f

    aput v2, v0, v1

    const/16 v1, 0xd3

    const v2, -0x55999934

    aput v2, v0, v1

    const/16 v1, 0xd4

    const v2, -0x27b7b770

    aput v2, v0, v1

    const/16 v1, 0xd5

    const v2, 0x5030306

    aput v2, v0, v1

    const/16 v1, 0xd6

    const v2, 0x1f6f6f7

    aput v2, v0, v1

    const/16 v1, 0xd7

    const v2, 0x120e0e1c

    aput v2, v0, v1

    const/16 v1, 0xd8

    const v2, -0x5c9e9e3e

    aput v2, v0, v1

    const/16 v1, 0xd9

    const v2, 0x5f35356a

    aput v2, v0, v1

    const/16 v1, 0xda

    const v2, -0x6a8a852

    aput v2, v0, v1

    const/16 v1, 0xdb

    const v2, -0x2f464697

    aput v2, v0, v1

    const/16 v1, 0xdc

    const v2, -0x6e7979e9

    aput v2, v0, v1

    const/16 v1, 0xdd

    const v2, 0x58c1c199

    aput v2, v0, v1

    const/16 v1, 0xde

    const v2, 0x271d1d3a

    aput v2, v0, v1

    const/16 v1, 0xdf

    const v2, -0x466161d9

    aput v2, v0, v1

    const/16 v1, 0xe0

    const v2, 0x38e1e1d9

    aput v2, v0, v1

    const/16 v1, 0xe1

    const v2, 0x13f8f8eb

    aput v2, v0, v1

    const/16 v1, 0xe2

    const v2, -0x4c6767d5

    aput v2, v0, v1

    const/16 v1, 0xe3

    const v2, 0x33111122

    aput v2, v0, v1

    const/16 v1, 0xe4

    const v2, -0x4496962e

    aput v2, v0, v1

    const/16 v1, 0xe5

    const v2, 0x70d9d9a9

    aput v2, v0, v1

    const/16 v1, 0xe6

    const v2, -0x767171f9

    aput v2, v0, v1

    const/16 v1, 0xe7

    const v2, -0x586b6bcd

    aput v2, v0, v1

    const/16 v1, 0xe8

    const v2, -0x496464d3

    aput v2, v0, v1

    const/16 v1, 0xe9

    const v2, 0x221e1e3c

    aput v2, v0, v1

    const/16 v1, 0xea

    const v2, -0x6d7878eb

    aput v2, v0, v1

    const/16 v1, 0xeb

    const v2, 0x20e9e9c9

    aput v2, v0, v1

    const/16 v1, 0xec

    const v2, 0x49cece87

    aput v2, v0, v1

    const/16 v1, 0xed

    const v2, -0xaaaa56

    aput v2, v0, v1

    const/16 v1, 0xee

    const v2, 0x78282850

    aput v2, v0, v1

    const/16 v1, 0xef

    const v2, 0x7adfdfa5

    aput v2, v0, v1

    const/16 v1, 0xf0

    const v2, -0x707373fd

    aput v2, v0, v1

    const/16 v1, 0xf1

    const v2, -0x75e5ea7

    aput v2, v0, v1

    const/16 v1, 0xf2

    const v2, -0x7f7676f7

    aput v2, v0, v1

    const/16 v1, 0xf3

    const v2, 0x170d0d1a

    aput v2, v0, v1

    const/16 v1, 0xf4

    const v2, -0x2540409b

    aput v2, v0, v1

    const/16 v1, 0xf5

    const v2, 0x31e6e6d7

    aput v2, v0, v1

    const/16 v1, 0xf6

    const v2, -0x39bdbd7c

    aput v2, v0, v1

    const/16 v1, 0xf7

    const v2, -0x47979730

    aput v2, v0, v1

    const/16 v1, 0xf8

    const v2, -0x3cbebe7e

    aput v2, v0, v1

    const/16 v1, 0xf9

    const v2, -0x4f6666d7

    aput v2, v0, v1

    const/16 v1, 0xfa

    const v2, 0x772d2d5a

    aput v2, v0, v1

    const/16 v1, 0xfb

    const v2, 0x110f0f1e

    aput v2, v0, v1

    const/16 v1, 0xfc

    const v2, -0x344f4f85    # -2.315903E7f

    aput v2, v0, v1

    const/16 v1, 0xfd

    const v2, -0x3abab58

    aput v2, v0, v1

    const/16 v1, 0xfe

    const v2, -0x29444493

    aput v2, v0, v1

    const/16 v1, 0xff

    const v2, 0x3a16162c

    aput v2, v0, v1

    sput-object v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x1b
        0x36
        0x6c
        0xd8
        0xab
        0x4d
        0x9a
        0x2f
        0x5e
        0xbc
        0x63
        0xc6
        0x97
        0x35
        0x6a
        0xd4
        0xb3
        0x7d
        0xfa
        0xef
        0xc5
        0x91
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->workingKey:[[I

    invoke-virtual {p0, p1}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->init([B)V

    return-void
.end method

.method private final encryptBlock([[I)V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    const/4 v2, 0x0

    aget-object v3, p1, v2

    aget v3, v3, v2

    xor-int/2addr v1, v3

    iput v1, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    iget v1, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    aget-object v3, p1, v2

    const/4 v4, 0x1

    aget v3, v3, v4

    xor-int/2addr v1, v3

    iput v1, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    iget v1, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    aget-object v3, p1, v2

    const/4 v5, 0x2

    aget v3, v3, v5

    xor-int/2addr v1, v3

    iput v1, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    iget v1, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    aget-object v3, p1, v2

    const/4 v6, 0x3

    aget v3, v3, v6

    xor-int/2addr v1, v3

    iput v1, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    move v1, v4

    :goto_0
    iget v3, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->rounds:I

    sub-int/2addr v3, v4

    const/16 v7, 0x10

    const/16 v8, 0x18

    const/16 v9, 0x8

    if-lt v1, v3, :cond_0

    sget-object v3, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    iget v10, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    and-int/lit16 v10, v10, 0xff

    aget v10, v3, v10

    iget v11, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    shr-int/2addr v11, v9

    and-int/lit16 v11, v11, 0xff

    aget v11, v3, v11

    invoke-direct {v0, v11, v8}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v11

    xor-int/2addr v10, v11

    iget v11, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    shr-int/2addr v11, v7

    and-int/lit16 v11, v11, 0xff

    aget v11, v3, v11

    invoke-direct {v0, v11, v7}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v11

    xor-int/2addr v10, v11

    iget v11, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    shr-int/2addr v11, v8

    and-int/lit16 v11, v11, 0xff

    aget v11, v3, v11

    invoke-direct {v0, v11, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v11

    xor-int/2addr v10, v11

    aget-object v11, p1, v1

    aget v11, v11, v2

    xor-int/2addr v10, v11

    iget v11, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    and-int/lit16 v11, v11, 0xff

    aget v11, v3, v11

    iget v12, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    shr-int/2addr v12, v9

    and-int/lit16 v12, v12, 0xff

    aget v12, v3, v12

    invoke-direct {v0, v12, v8}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v12

    xor-int/2addr v11, v12

    iget v12, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    shr-int/2addr v12, v7

    and-int/lit16 v12, v12, 0xff

    aget v12, v3, v12

    invoke-direct {v0, v12, v7}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v12

    xor-int/2addr v11, v12

    iget v12, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    shr-int/2addr v12, v8

    and-int/lit16 v12, v12, 0xff

    aget v12, v3, v12

    invoke-direct {v0, v12, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v12

    xor-int/2addr v11, v12

    aget-object v12, p1, v1

    aget v12, v12, v4

    xor-int/2addr v11, v12

    iget v12, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    and-int/lit16 v12, v12, 0xff

    aget v12, v3, v12

    iget v13, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    shr-int/2addr v13, v9

    and-int/lit16 v13, v13, 0xff

    aget v13, v3, v13

    invoke-direct {v0, v13, v8}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v13

    xor-int/2addr v12, v13

    iget v13, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    shr-int/2addr v13, v7

    and-int/lit16 v13, v13, 0xff

    aget v13, v3, v13

    invoke-direct {v0, v13, v7}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v13

    xor-int/2addr v12, v13

    iget v13, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    shr-int/2addr v13, v8

    and-int/lit16 v13, v13, 0xff

    aget v13, v3, v13

    invoke-direct {v0, v13, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v13

    xor-int/2addr v12, v13

    aget-object v13, p1, v1

    aget v13, v13, v5

    xor-int/2addr v12, v13

    iget v13, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    and-int/lit16 v13, v13, 0xff

    aget v13, v3, v13

    iget v14, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    shr-int/2addr v14, v9

    and-int/lit16 v14, v14, 0xff

    aget v14, v3, v14

    invoke-direct {v0, v14, v8}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v13, v14

    iget v14, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    shr-int/2addr v14, v7

    and-int/lit16 v14, v14, 0xff

    aget v14, v3, v14

    invoke-direct {v0, v14, v7}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v13, v14

    iget v14, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    shr-int/2addr v14, v8

    and-int/lit16 v14, v14, 0xff

    aget v3, v3, v14

    invoke-direct {v0, v3, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v3

    xor-int/2addr v3, v13

    add-int/lit8 v13, v1, 0x1

    aget-object v1, p1, v1

    aget v1, v1, v6

    xor-int/2addr v1, v3

    sget-object v3, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    and-int/lit16 v14, v10, 0xff

    aget-byte v14, v3, v14

    and-int/lit16 v14, v14, 0xff

    shr-int/lit8 v15, v11, 0x8

    and-int/lit16 v15, v15, 0xff

    aget-byte v15, v3, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v9

    xor-int/2addr v14, v15

    shr-int/lit8 v15, v12, 0x10

    and-int/lit16 v15, v15, 0xff

    aget-byte v15, v3, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v7

    xor-int/2addr v14, v15

    shr-int/lit8 v15, v1, 0x18

    and-int/lit16 v15, v15, 0xff

    aget-byte v15, v3, v15

    shl-int/2addr v15, v8

    xor-int/2addr v14, v15

    aget-object v15, p1, v13

    aget v2, v15, v2

    xor-int/2addr v2, v14

    iput v2, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    and-int/lit16 v2, v11, 0xff

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v14, v12, 0x8

    and-int/lit16 v14, v14, 0xff

    aget-byte v14, v3, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v9

    xor-int/2addr v2, v14

    shr-int/lit8 v14, v1, 0x10

    and-int/lit16 v14, v14, 0xff

    aget-byte v14, v3, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v7

    xor-int/2addr v2, v14

    shr-int/lit8 v14, v10, 0x18

    and-int/lit16 v14, v14, 0xff

    aget-byte v14, v3, v14

    shl-int/2addr v14, v8

    xor-int/2addr v2, v14

    aget-object v14, p1, v13

    aget v4, v14, v4

    xor-int/2addr v2, v4

    iput v2, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    and-int/lit16 v2, v12, 0xff

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v9

    xor-int/2addr v2, v4

    shr-int/lit8 v4, v10, 0x10

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v3, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v7

    xor-int/2addr v2, v4

    shr-int/lit8 v4, v11, 0x18

    and-int/lit16 v4, v4, 0xff

    aget-byte v4, v3, v4

    shl-int/2addr v4, v8

    xor-int/2addr v2, v4

    aget-object v4, p1, v13

    aget v4, v4, v5

    xor-int/2addr v2, v4

    iput v2, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v3, v1

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, v10, 0x8

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v9

    xor-int/2addr v1, v2

    shr-int/lit8 v2, v11, 0x10

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v7

    xor-int/2addr v1, v2

    shr-int/lit8 v2, v12, 0x18

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v3, v2

    shl-int/2addr v2, v8

    xor-int/2addr v1, v2

    aget-object v2, p1, v13

    aget v2, v2, v6

    xor-int/2addr v1, v2

    iput v1, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    return-void

    :cond_0
    sget-object v3, Lnet/lingala/zip4j/crypto/engine/AESEngine;->T0:[I

    iget v10, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    and-int/lit16 v10, v10, 0xff

    aget v10, v3, v10

    iget v11, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    shr-int/2addr v11, v9

    and-int/lit16 v11, v11, 0xff

    aget v11, v3, v11

    invoke-direct {v0, v11, v8}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v11

    xor-int/2addr v10, v11

    iget v11, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    shr-int/2addr v11, v7

    and-int/lit16 v11, v11, 0xff

    aget v11, v3, v11

    invoke-direct {v0, v11, v7}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v11

    xor-int/2addr v10, v11

    iget v11, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    shr-int/2addr v11, v8

    and-int/lit16 v11, v11, 0xff

    aget v11, v3, v11

    invoke-direct {v0, v11, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v11

    xor-int/2addr v10, v11

    aget-object v11, p1, v1

    aget v11, v11, v2

    xor-int/2addr v10, v11

    iget v11, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    and-int/lit16 v11, v11, 0xff

    aget v11, v3, v11

    iget v12, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    shr-int/2addr v12, v9

    and-int/lit16 v12, v12, 0xff

    aget v12, v3, v12

    invoke-direct {v0, v12, v8}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v12

    xor-int/2addr v11, v12

    iget v12, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    shr-int/2addr v12, v7

    and-int/lit16 v12, v12, 0xff

    aget v12, v3, v12

    invoke-direct {v0, v12, v7}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v12

    xor-int/2addr v11, v12

    iget v12, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    shr-int/2addr v12, v8

    and-int/lit16 v12, v12, 0xff

    aget v12, v3, v12

    invoke-direct {v0, v12, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v12

    xor-int/2addr v11, v12

    aget-object v12, p1, v1

    aget v12, v12, v4

    xor-int/2addr v11, v12

    iget v12, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    and-int/lit16 v12, v12, 0xff

    aget v12, v3, v12

    iget v13, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    shr-int/2addr v13, v9

    and-int/lit16 v13, v13, 0xff

    aget v13, v3, v13

    invoke-direct {v0, v13, v8}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v13

    xor-int/2addr v12, v13

    iget v13, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    shr-int/2addr v13, v7

    and-int/lit16 v13, v13, 0xff

    aget v13, v3, v13

    invoke-direct {v0, v13, v7}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v13

    xor-int/2addr v12, v13

    iget v13, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    shr-int/2addr v13, v8

    and-int/lit16 v13, v13, 0xff

    aget v13, v3, v13

    invoke-direct {v0, v13, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v13

    xor-int/2addr v12, v13

    aget-object v13, p1, v1

    aget v13, v13, v5

    xor-int/2addr v12, v13

    iget v13, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    and-int/lit16 v13, v13, 0xff

    aget v13, v3, v13

    iget v14, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    shr-int/2addr v14, v9

    and-int/lit16 v14, v14, 0xff

    aget v14, v3, v14

    invoke-direct {v0, v14, v8}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v13, v14

    iget v14, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    shr-int/2addr v14, v7

    and-int/lit16 v14, v14, 0xff

    aget v14, v3, v14

    invoke-direct {v0, v14, v7}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v13, v14

    iget v14, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    shr-int/2addr v14, v8

    and-int/lit16 v14, v14, 0xff

    aget v14, v3, v14

    invoke-direct {v0, v14, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v14

    xor-int/2addr v13, v14

    add-int/lit8 v14, v1, 0x1

    aget-object v1, p1, v1

    aget v1, v1, v6

    xor-int/2addr v1, v13

    and-int/lit16 v13, v10, 0xff

    aget v13, v3, v13

    shr-int/lit8 v15, v11, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v15, v3, v15

    invoke-direct {v0, v15, v8}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v15

    xor-int/2addr v13, v15

    shr-int/lit8 v15, v12, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v15, v3, v15

    invoke-direct {v0, v15, v7}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v15

    xor-int/2addr v13, v15

    shr-int/lit8 v15, v1, 0x18

    and-int/lit16 v15, v15, 0xff

    aget v15, v3, v15

    invoke-direct {v0, v15, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v15

    xor-int/2addr v13, v15

    aget-object v15, p1, v14

    aget v15, v15, v2

    xor-int/2addr v13, v15

    iput v13, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    and-int/lit16 v13, v11, 0xff

    aget v13, v3, v13

    shr-int/lit8 v15, v12, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v15, v3, v15

    invoke-direct {v0, v15, v8}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v15

    xor-int/2addr v13, v15

    shr-int/lit8 v15, v1, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v15, v3, v15

    invoke-direct {v0, v15, v7}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v15

    xor-int/2addr v13, v15

    shr-int/lit8 v15, v10, 0x18

    and-int/lit16 v15, v15, 0xff

    aget v15, v3, v15

    invoke-direct {v0, v15, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v15

    xor-int/2addr v13, v15

    aget-object v15, p1, v14

    aget v15, v15, v4

    xor-int/2addr v13, v15

    iput v13, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    and-int/lit16 v13, v12, 0xff

    aget v13, v3, v13

    shr-int/lit8 v15, v1, 0x8

    and-int/lit16 v15, v15, 0xff

    aget v15, v3, v15

    invoke-direct {v0, v15, v8}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v15

    xor-int/2addr v13, v15

    shr-int/lit8 v15, v10, 0x10

    and-int/lit16 v15, v15, 0xff

    aget v15, v3, v15

    invoke-direct {v0, v15, v7}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v15

    xor-int/2addr v13, v15

    shr-int/lit8 v15, v11, 0x18

    and-int/lit16 v15, v15, 0xff

    aget v15, v3, v15

    invoke-direct {v0, v15, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v15

    xor-int/2addr v13, v15

    aget-object v15, p1, v14

    aget v15, v15, v5

    xor-int/2addr v13, v15

    iput v13, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    and-int/lit16 v1, v1, 0xff

    aget v1, v3, v1

    shr-int/2addr v10, v9

    and-int/lit16 v10, v10, 0xff

    aget v10, v3, v10

    invoke-direct {v0, v10, v8}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v10

    xor-int/2addr v1, v10

    shr-int/lit8 v10, v11, 0x10

    and-int/lit16 v10, v10, 0xff

    aget v10, v3, v10

    invoke-direct {v0, v10, v7}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v7

    xor-int/2addr v1, v7

    shr-int/lit8 v7, v12, 0x18

    and-int/lit16 v7, v7, 0xff

    aget v3, v3, v7

    invoke-direct {v0, v3, v9}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v3

    xor-int/2addr v1, v3

    add-int/lit8 v3, v14, 0x1

    aget-object v7, p1, v14

    aget v7, v7, v6

    xor-int/2addr v1, v7

    iput v1, v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    move v1, v3

    goto/16 :goto_0
.end method

.method private generateWorkingKey([B)[[I
    .locals 13

    array-length v0, p1

    const/4 v1, 0x4

    div-int/2addr v0, v1

    const/16 v2, 0x8

    const/4 v3, 0x6

    if-eq v0, v1, :cond_0

    if-eq v0, v3, :cond_0

    if-ne v0, v2, :cond_5

    :cond_0
    mul-int/lit8 v4, v0, 0x4

    array-length v5, p1

    if-ne v4, v5, :cond_5

    add-int/lit8 v4, v0, 0x6

    iput v4, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->rounds:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/4 v6, 0x2

    new-array v7, v6, [I

    aput v1, v7, v5

    const/4 v8, 0x0

    aput v4, v7, v8

    const-class v4, I

    invoke-static {v4, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    move v7, v8

    :goto_0
    array-length v9, p1

    if-lt v8, v9, :cond_4

    iget p1, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->rounds:I

    add-int/2addr p1, v5

    shl-int/lit8 v9, p1, 0x2

    move p1, v0

    :goto_1
    if-lt p1, v9, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v6, p1, -0x1

    shr-int/lit8 v7, v6, 0x2

    aget-object v7, v4, v7

    and-int/lit8 v6, v6, 0x3

    aget v6, v7, v6

    rem-int v7, p1, v0

    if-nez v7, :cond_2

    invoke-direct {p0, v6, v2}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->shift(II)I

    move-result v6

    invoke-direct {p0, v6}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->subWord(I)I

    move-result v6

    sget-object v7, Lnet/lingala/zip4j/crypto/engine/AESEngine;->rcon:[I

    div-int v8, p1, v0

    sub-int/2addr v8, v5

    aget v7, v7, v8

    xor-int/2addr v6, v7

    goto :goto_2

    :cond_2
    if-le v0, v3, :cond_3

    if-ne v7, v1, :cond_3

    invoke-direct {p0, v6}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->subWord(I)I

    move-result v6

    :cond_3
    :goto_2
    shr-int/lit8 v7, p1, 0x2

    aget-object v7, v4, v7

    and-int/lit8 v8, p1, 0x3

    sub-int v10, p1, v0

    shr-int/lit8 v11, v10, 0x2

    aget-object v11, v4, v11

    and-int/lit8 v10, v10, 0x3

    aget v10, v11, v10

    xor-int/2addr v6, v10

    aput v6, v7, v8

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    shr-int/lit8 v9, v7, 0x2

    aget-object v9, v4, v9

    and-int/lit8 v10, v7, 0x3

    aget-byte v11, p1, v8

    and-int/lit16 v11, v11, 0xff

    add-int/lit8 v12, v8, 0x1

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/2addr v12, v2

    or-int/2addr v11, v12

    add-int/lit8 v12, v8, 0x2

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    add-int/lit8 v12, v8, 0x3

    aget-byte v12, p1, v12

    shl-int/lit8 v12, v12, 0x18

    or-int/2addr v11, v12

    aput v11, v9, v10

    add-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v5

    goto :goto_0

    :cond_5
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string v0, "invalid key length (not 128/192/256)"

    invoke-direct {p1, v0}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private shift(II)I
    .locals 1

    ushr-int v0, p1, p2

    neg-int p2, p2

    shl-int/2addr p1, p2

    or-int/2addr p1, v0

    return p1
.end method

.method private final stateIn([BI)V
    .locals 2

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    iput p2, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p2, v0

    iput p2, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr p2, v1

    iput p2, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr p2, v0

    iput p2, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    add-int/lit8 p2, v1, 0x1

    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    add-int/lit8 v1, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v0

    iput p2, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr p2, v1

    iput p2, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr p2, v0

    iput p2, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    add-int/lit8 p2, v1, 0x1

    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    add-int/lit8 v1, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v0

    iput p2, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr p2, v1

    iput p2, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr p2, v0

    iput p2, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    add-int/lit8 p2, v1, 0x1

    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    add-int/lit8 v1, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v0

    iput p2, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr p2, v1

    iput p2, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    aget-byte p1, p1, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, p2

    iput p1, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    return-void
.end method

.method private final stateOut([BI)V
    .locals 3

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C0:I

    int-to-byte v2, v1

    aput-byte v2, p1, p2

    add-int/lit8 p2, v0, 0x1

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    add-int/lit8 p2, v0, 0x1

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C1:I

    int-to-byte v2, v1

    aput-byte v2, p1, p2

    add-int/lit8 p2, v0, 0x1

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    add-int/lit8 p2, v0, 0x1

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C2:I

    int-to-byte v2, v1

    aput-byte v2, p1, p2

    add-int/lit8 p2, v0, 0x1

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    add-int/lit8 p2, v0, 0x1

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->C3:I

    int-to-byte v2, v1

    aput-byte v2, p1, p2

    add-int/lit8 p2, v0, 0x1

    shr-int/lit8 v2, v1, 0x8

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v2, v1, 0x10

    int-to-byte v2, v2

    aput-byte v2, p1, p2

    shr-int/lit8 p2, v1, 0x18

    int-to-byte p2, p2

    aput-byte p2, p1, v0

    return-void
.end method

.method private subWord(I)I
    .locals 3

    sget-object v0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->S:[B

    and-int/lit16 v1, p1, 0xff

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    aget-byte p1, v0, p1

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v1

    return p1
.end method


# virtual methods
.method public init([B)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->generateWorkingKey([B)[[I

    move-result-object p1

    iput-object p1, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->workingKey:[[I

    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 2

    iget-object v0, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->workingKey:[[I

    if-eqz v0, :cond_2

    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-gt v0, v1, :cond_1

    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-gt v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->stateIn([BI)V

    iget-object p1, p0, Lnet/lingala/zip4j/crypto/engine/AESEngine;->workingKey:[[I

    invoke-direct {p0, p1}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->encryptBlock([[I)V

    invoke-direct {p0, p3, p4}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->stateOut([BI)V

    const/16 p1, 0x10

    return p1

    :cond_0
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lnet/lingala/zip4j/exception/ZipException;

    const-string p2, "AES engine not initialised"

    invoke-direct {p1, p2}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public processBlock([B[B)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, v0}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->processBlock([BI[BI)I

    move-result p1

    return p1
.end method
