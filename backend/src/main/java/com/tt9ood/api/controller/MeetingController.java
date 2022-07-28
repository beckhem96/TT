package com.tt9ood.api.controller;

import com.tt9ood.api.dto.MeetingDto;
import com.tt9ood.api.dto.NoticeDto;
import com.tt9ood.api.service.MeetingService;
import com.tt9ood.common.model.response.BaseResponseBody;
import com.tt9ood.db.entity.Meeting;
import io.swagger.annotations.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@Api(value = "구인게시판 API", tags = {"Meeting."})
@RestController
@RequestMapping("/api/meeting")
public class MeetingController {

    @Autowired
    MeetingService meetingService;

    /**
     * 구인 게시글 등록
     * @param meetingDto 게시글 내용
     * @return ResponseEntity 등록 이후 응답 상태
     */
    @PostMapping("/register")
    @ApiOperation(value = "구인 게시글 등록", notes = "구인 게시글 등록.")
    @ApiResponses({
            @ApiResponse(code = 200, message = "성공"),
            @ApiResponse(code = 404, message = "구인 글 없음"),
            @ApiResponse(code = 500, message = "서버 오류")
    })
    public ResponseEntity<? extends BaseResponseBody> register(
            @RequestBody @ApiParam(value="구인 게시글 내용", required = true) MeetingDto meetingDto) {

        //임의로 리턴된 User 인스턴스. 현재 코드는 회원 가입 성공 여부만 판단하기 때문에 굳이 Insert 된 유저 정보를 응답하지 않음.
        Meeting meeting = meetingService.createMeeting(meetingDto);

        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "Success"));
    }

    // 조회

    /**
     * 전체 리스트 불러오기
     * @return ResponseEntity 조회 이후 응답 상태 및 전체 구인 글
     */
    @GetMapping
    @ApiOperation(value = "구인 게시글 전체 조회", notes = "구인 게시글 전체 조회.")
    @ApiResponses({
            @ApiResponse(code = 200, message = "성공"),
            @ApiResponse(code = 404, message = "구인 글 없음"),
            @ApiResponse(code = 500, message = "서버 오류")
    })
    public ResponseEntity<?> readAllList() {

        return ResponseEntity.status(200).body(meetingService.readAllMeeting());
    }

    /**
     * 각 번호에 맞는 게시글 불러오기
     * @param meetingCode 구인 글 코드
     * @return 조회 이후 응답 상태 및 조회한 구인 글
     */
    @GetMapping("{meetingCode}")
    @ApiOperation(value = "구인 글 조회", notes = "특정 구인 글 조회_구인 글 코드번호 필요.")
    @ApiResponses({
            @ApiResponse(code = 200, message = "성공"),
            @ApiResponse(code = 404, message = "구인 글 없음"),
            @ApiResponse(code = 500, message = "서버 오류")
    })
    public ResponseEntity<?> readNotice(@PathVariable long meetingCode) {

        return ResponseEntity.status(200).body(meetingService.readMeeting(meetingCode));
    }

    /**
     * 구인 글 수정
     * @param meetingCode 구인 게시글 코드
     * @param meetingForUpdate 수정 이후 응답 상태 및 수정할 게시글 내용
     * @return
     */
    @PutMapping("{meetingCode}")
    @ApiOperation(value = "구인 게시글 수정", notes = "특정 구인글 수정_구인글 코드번호 필요.")
    @ApiResponses({
            @ApiResponse(code = 200, message = "성공"),
            @ApiResponse(code = 404, message = "구인 글 없음"),
            @ApiResponse(code = 500, message = "서버 오류")
    })
    public ResponseEntity<?> updateNotice(@PathVariable int meetingCode,
                                          @RequestBody @ApiParam(value="수정할 공지사항 내용", required = true) MeetingDto meetingForUpdate) {

        MeetingDto updatedMeeting = meetingService.updateMeeting(meetingCode, meetingForUpdate);

        return ResponseEntity.status(200).body(updatedMeeting);
    }

    /**
     * 구인 글 삭제
     * @param meetingCode 구인 글 코드
     * @return ResponseEntity 삭제 이후 응답 상태
     */
    @DeleteMapping("{meetingCode}")
    @ApiOperation(value = "구인 글 삭제", notes = "특정 구인 글 삭제_구인 글 코드번호 필요.")
    @ApiResponses({
            @ApiResponse(code = 200, message = "성공"),
            @ApiResponse(code = 404, message = "구인 글 없음"),
            @ApiResponse(code = 500, message = "서버 오류")
    })
    public ResponseEntity<?> deleteNotice(@PathVariable int meetingCode) {

        meetingService.deleteMeeting(meetingCode);

        return ResponseEntity.status(200).body(BaseResponseBody.of(200, "Success"));
    }
}